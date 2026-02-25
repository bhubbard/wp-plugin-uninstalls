#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gsbrand_activation_redirect'
wp option delete 'woocommerce_prepend_shop_page_to_urls'
wp option delete 'gswcbr_active_time'
wp option delete 'gswcbr_review_dismiss'

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand_image_url'"
