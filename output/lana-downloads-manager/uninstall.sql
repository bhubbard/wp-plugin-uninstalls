-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lana_downloads_manager_uploading_files_folder', 'lana_downloads_manager_endpoint', 'lana_downloads_manager_post_type_endpoint', 'lana_downloads_manager_category_endpoint', 'lana_downloads_manager_public', 'lana_downloads_manager_post_type', 'lana_downloads_manager_counter', 'lana_downloads_manager_endpoint_type', 'lana_downloads_manager_role_edit_lana_download_files', 'lana_downloads_manager_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lana_download_file_url', 'lana_download_count', 'lana_download_file_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('lana_download_file_url', 'lana_download_count', 'lana_download_file_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('lana_download_file_url', 'lana_download_count', 'lana_download_file_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lana_download_file_url', 'lana_download_count', 'lana_download_file_id');

