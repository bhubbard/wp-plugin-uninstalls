#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kirb_import_running'
wp option delete 'kirb_review_notice_dismissed_at'

# Delete Transients
wp transient delete 'kirb_deactivation_message'

# Clear Cron Jobs
wp cron event delete 'kirb_import_demo_products_cron'
wp cron event delete 'kirb_clean_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kirb_drafted_by_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kirb_drafted_by_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kirb_drafted_by_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kirb_drafted_by_plugin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
