#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_product_thumbnail_slider_bullet_nav_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_product_thumbnail_slider_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_product_variation_slider_enabled'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachment_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
