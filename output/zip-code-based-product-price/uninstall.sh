#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zip_code_based_product_price_settings'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zip_code_based_price_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zip_code_based_price_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zip_code_based_price_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zip_code_based_price_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zip_code_based_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zip_code_based_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zip_code_based_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zip_code_based_product_price'"
