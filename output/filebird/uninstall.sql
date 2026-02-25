-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbv_rest_api_key', 'filebird_activation_error', 'filebird_activation_old_domain', 'fbv_old_data_updated_to_v4', 'fbv_first_folder_notice', 'fbv_is_new_user', 'njt_fbv_folder_per_user', 'pigen_options', 'njt_fbv_allow_svg_upload', 'fbv_review', 'filebird_saved_downloads', 'fbv_folder_colors', 'njt_fbv_is_search_using_api', 'fbv_settings', 'fbv_version', 'fbv_first_time_active');
DELETE FROM wp_options WHERE option_name LIKE 'filebird_backup_%';
DELETE FROM wp_options WHERE option_name LIKE 'njt_fb_updated_from_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'new_fbv_id', 'pll_filter_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'new_fbv_id', 'pll_filter_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'new_fbv_id', 'pll_filter_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'new_fbv_id', 'pll_filter_content');

