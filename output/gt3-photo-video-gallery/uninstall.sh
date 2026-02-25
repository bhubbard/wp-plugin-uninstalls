#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'gt3pg_disable_notice_pro_required_update'
wp option delete 'gt3_rate_date'
wp option delete 'gt3pg_photo_gallery'
wp option delete 'gt3pg_disable_rate_notice'
wp option delete 'gt3pg_disable_50_off'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gt3pg_%'"

# Delete Transients
wp transient delete 'gt3_watermark_processing'
wp transient delete 'update_plugins'
wp transient delete '_gt3pg_page_welcome_redirect'

# Clear Cron Jobs
wp cron event delete 'gt3pg_lite_single_event_usage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gt3_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gt3_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gt3_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gt3_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gt3_external_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gt3_external_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gt3_external_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gt3_external_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gt3pg_shortcode_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gt3pg_shortcode_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gt3pg_shortcode_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gt3pg_shortcode_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy-placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy-placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy-placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy-placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_watermark_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_watermark_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_watermark_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_watermark_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_watermark_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_watermark_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_watermark_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_watermark_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpt_gt3_gallery_images_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpt_gt3_gallery_images_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpt_gt3_gallery_images_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpt_gt3_gallery_images_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpt_gt3_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpt_gt3_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpt_gt3_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpt_gt3_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpt_gt3_gallery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpt_gt3_gallery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpt_gt3_gallery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpt_gt3_gallery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpt_gt3_gallery_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpt_gt3_gallery_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpt_gt3_gallery_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpt_gt3_gallery_attributes'"
