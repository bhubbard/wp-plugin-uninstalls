-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('max_upload_size', 'min_dpi_size', 'max_dpi_size', 'dropbox_code', 'dropbox_token', 'upload_to_dropbox', 'dropbox_folder_path', 'dropbox_user_id', 'upload_space_check_disabled');

