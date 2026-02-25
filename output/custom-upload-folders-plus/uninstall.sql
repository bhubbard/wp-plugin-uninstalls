-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwcuf_select', 'jwcuf_default_folder_name', 'jwcuf_file_types', 'jwcuf_user_folder_name', 'jwcuf_uploads_use_yearmonth_folders', 'jwcuf_use_blogname_folders');

