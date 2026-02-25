#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_attribute_taxonomies'
wp option delete 'krfs_review_notice_dismissed_at'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'krfs_deactivation_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ki_video_360'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ki_video_360'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ki_video_360'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ki_video_360'"
