-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_gallery_debug', 'sp_gallery_slug', 'sp_gallery_settings', 'shutterpress_gallery_version', 'sp_gallery_migrations_applied', 'sp_gallery_version_tracked', 'sp_gallery_first_installed', 'sp_gallery_images_per_page', 'sp_gallery_breakpoint_tablet', 'sp_gallery_breakpoint_mobile', 'sp_gallery_tracking_allowed', 'sp_gallery_meta_value', 'sp_gallery_install_id', 'sp_gallery_activation_tracked', 'elementor_active_kit', 'elementor_scheme_color', 'sp_gallery_upgrade_lock');
DELETE FROM wp_options WHERE option_name LIKE '%button_color';
DELETE FROM wp_options WHERE option_name LIKE '%column_gap';
DELETE FROM wp_options WHERE option_name LIKE '%columns_desktop';
DELETE FROM wp_options WHERE option_name LIKE '%columns_tablet';
DELETE FROM wp_options WHERE option_name LIKE '%columns_mobile';
DELETE FROM wp_options WHERE option_name LIKE '%icon_size';
DELETE FROM wp_options WHERE option_name LIKE '%justified_row_height';
DELETE FROM wp_options WHERE option_name LIKE '%layout';
DELETE FROM wp_options WHERE option_name LIKE '%use_infinite_scroll';
DELETE FROM wp_options WHERE option_name LIKE '%use_lightbox';
DELETE FROM wp_options WHERE option_name LIKE '%use_pagination';
DELETE FROM wp_options WHERE option_name LIKE 'sp_gallery_breakpoint_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_gallery_images', 'sp_gallery_review_dismissed', '_sp_gallery_images_array', 'sp_gallery_show_like_icon', 'sp_gallery_show_download_icon', 'sp_gallery_download_fullsize_image', 'sp_gallery_layout', 'sp_gallery_liked_images', '_sp_gallery_checked_attachments', 'sp_gallery_image_sorting', '_wp_attachment_image_alt', '_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_gallery_images', 'sp_gallery_review_dismissed', '_sp_gallery_images_array', 'sp_gallery_show_like_icon', 'sp_gallery_show_download_icon', 'sp_gallery_download_fullsize_image', 'sp_gallery_layout', 'sp_gallery_liked_images', '_sp_gallery_checked_attachments', 'sp_gallery_image_sorting', '_wp_attachment_image_alt', '_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_gallery_images', 'sp_gallery_review_dismissed', '_sp_gallery_images_array', 'sp_gallery_show_like_icon', 'sp_gallery_show_download_icon', 'sp_gallery_download_fullsize_image', 'sp_gallery_layout', 'sp_gallery_liked_images', '_sp_gallery_checked_attachments', 'sp_gallery_image_sorting', '_wp_attachment_image_alt', '_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_gallery_images', 'sp_gallery_review_dismissed', '_sp_gallery_images_array', 'sp_gallery_show_like_icon', 'sp_gallery_show_download_icon', 'sp_gallery_download_fullsize_image', 'sp_gallery_layout', 'sp_gallery_liked_images', '_sp_gallery_checked_attachments', 'sp_gallery_image_sorting', '_wp_attachment_image_alt', '_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%color_accent';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%color_accent';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%color_accent';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%color_accent';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%template_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%template_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%template_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%template_id';

