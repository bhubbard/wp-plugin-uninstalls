-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('esv_flattened_path', 'esv_table_id', 'esv_url', 'esv_original_path', 'esv_show_download_link', 'esv_show_refresh_button', 'esv_flattened_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('esv_flattened_path', 'esv_table_id', 'esv_url', 'esv_original_path', 'esv_show_download_link', 'esv_show_refresh_button', 'esv_flattened_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('esv_flattened_path', 'esv_table_id', 'esv_url', 'esv_original_path', 'esv_show_download_link', 'esv_show_refresh_button', 'esv_flattened_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('esv_flattened_path', 'esv_table_id', 'esv_url', 'esv_original_path', 'esv_show_download_link', 'esv_show_refresh_button', 'esv_flattened_url');

