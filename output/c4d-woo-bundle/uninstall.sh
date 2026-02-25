#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_thousand_sep'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c4d_woo_bundle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c4d_woo_bundle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c4d_woo_bundle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c4d_woo_bundle'"
