#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_gallery_debug'
wp option delete 'sp_gallery_slug'
wp option delete 'sp_gallery_settings'
wp option delete 'shutterpress_gallery_version'
wp option delete 'sp_gallery_migrations_applied'
wp option delete 'sp_gallery_version_tracked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%button_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%column_gap'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%columns_desktop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%columns_tablet'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%columns_mobile'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%justified_row_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%layout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%use_infinite_scroll'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%use_lightbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%use_pagination'"
wp option delete 'sp_gallery_first_installed'
wp option delete 'sp_gallery_images_per_page'
wp option delete 'sp_gallery_breakpoint_tablet'
wp option delete 'sp_gallery_breakpoint_mobile'
wp option delete 'sp_gallery_tracking_allowed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sp_gallery_breakpoint_%'"
wp option delete 'sp_gallery_meta_value'
wp option delete 'sp_gallery_install_id'
wp option delete 'sp_gallery_activation_tracked'
wp option delete 'elementor_active_kit'
wp option delete 'elementor_scheme_color'

# Delete Transients
wp transient delete 'sp_gallery_upgrade_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%color_accent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%color_accent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%color_accent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%color_accent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_gallery_images_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_gallery_images_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_gallery_images_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_gallery_images_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_show_like_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_show_like_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_show_like_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_show_like_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_show_download_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_show_download_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_show_download_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_show_download_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_download_fullsize_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_download_fullsize_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_download_fullsize_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_download_fullsize_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_liked_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_liked_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_liked_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_liked_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_gallery_checked_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_gallery_checked_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_gallery_checked_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_gallery_checked_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gallery_image_sorting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gallery_image_sorting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gallery_image_sorting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gallery_image_sorting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
