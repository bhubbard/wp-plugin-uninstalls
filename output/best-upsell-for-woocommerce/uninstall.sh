#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_tax_total_display'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bestupsell_text_attribute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bestupsell_text_attribute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bestupsell_text_attribute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bestupsell_text_attribute'"
