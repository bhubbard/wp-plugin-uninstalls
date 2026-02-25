#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acf-image-aspect-ratio-crop-settings'
wp option delete 'acf-image-aspect-ratio-crop-version'

# Clear Cron Jobs
wp cron event delete 'aiarc_delete_unused_attachments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_parent_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_image_aspect_ratio_crop_parent_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_parent_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_parent_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_temp_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_image_aspect_ratio_crop_temp_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_temp_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_temp_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_image_aspect_ratio_crop_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_coordinates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_image_aspect_ratio_crop_coordinates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_coordinates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_coordinates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_image_aspect_ratio_crop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_image_aspect_ratio_crop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_image_aspect_ratio_crop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_image_aspect_ratio_crop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_original_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_image_aspect_ratio_crop_original_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_original_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_image_aspect_ratio_crop_original_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
