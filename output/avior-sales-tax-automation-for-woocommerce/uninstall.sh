#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_default_country'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_county'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_county'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_county'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_county'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_county'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_county'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_county'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_county'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
