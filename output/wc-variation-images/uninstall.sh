#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_variation_images_installed'
wp option delete 'wcvi_installed'
wp option delete 'wcvi_disable_image_zoom'
wp option delete 'wcvi_disable_image_slider'
wp option delete 'wcvi_disable_image_lightbox'
wp option delete 'wcvi_gallery_position'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_variation_images_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_variation_images_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_variation_images_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_variation_images_variation_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
