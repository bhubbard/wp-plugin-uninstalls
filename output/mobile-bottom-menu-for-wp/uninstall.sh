#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-bnav'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'wpmobilebottommenupro_license_options'
wp option delete 'csf_demo_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-bnav-menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-bnav-menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-bnav-menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-bnav-menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
