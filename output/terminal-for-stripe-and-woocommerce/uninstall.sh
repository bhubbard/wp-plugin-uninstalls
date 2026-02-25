#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_stripe_terminal_settings'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'wc_stripe_terminal_version'
wp option delete 'wc_stripe_show_terminal_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_intent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_intent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_intent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_intent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
