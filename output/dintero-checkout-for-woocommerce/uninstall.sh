#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dintero_checkout_settings'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'krokedil_debuglog_dintero_checkout'
wp option delete 'woocommerce_price_num_decimals'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dintero_shipping_data_%' OR option_name LIKE '_site_transient_dintero_shipping_data_%'"
wp transient delete 'dintero_checkout_access_token'
wp transient delete 'dintero_checkout_keyword_backlinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_applied_gift_cards'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_applied_gift_cards'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_applied_gift_cards'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_applied_gift_cards'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_dintero_wc_zero_decimal_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_dintero_wc_zero_decimal_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_dintero_wc_zero_decimal_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_dintero_wc_zero_decimal_notice'"
