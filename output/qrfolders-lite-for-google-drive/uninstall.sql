-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qr_folder_logo_url', 'qr_folder_handout_message', 'qr_folder_gallery_url', 'qr_folder_drive_root_url', 'qr_folder_drive_api_key', 'qr_folder_footer_text', 'qr_folder_last_drive_cleanup', 'qr_folder_last_drive_cleanup_time', 'qr_folder_needs_flush');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qr_folder_drive_id', 'qrfolders_lite_drive_file_count', 'qrfolders_lite_drive_file_count_checked', 'qr_folder_drive_missing', 'qr_folder_files', 'qr_folder_footer', '_qrfolders_lite_qr_target_url', '_qrfolders_lite_qr_created', '_qrfolders_lite_qr_upgraded', 'qr_folder_retired', '_qrfolders_lite_qr_file', '_qrfolders_lite_qr_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('qr_folder_drive_id', 'qrfolders_lite_drive_file_count', 'qrfolders_lite_drive_file_count_checked', 'qr_folder_drive_missing', 'qr_folder_files', 'qr_folder_footer', '_qrfolders_lite_qr_target_url', '_qrfolders_lite_qr_created', '_qrfolders_lite_qr_upgraded', 'qr_folder_retired', '_qrfolders_lite_qr_file', '_qrfolders_lite_qr_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('qr_folder_drive_id', 'qrfolders_lite_drive_file_count', 'qrfolders_lite_drive_file_count_checked', 'qr_folder_drive_missing', 'qr_folder_files', 'qr_folder_footer', '_qrfolders_lite_qr_target_url', '_qrfolders_lite_qr_created', '_qrfolders_lite_qr_upgraded', 'qr_folder_retired', '_qrfolders_lite_qr_file', '_qrfolders_lite_qr_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qr_folder_drive_id', 'qrfolders_lite_drive_file_count', 'qrfolders_lite_drive_file_count_checked', 'qr_folder_drive_missing', 'qr_folder_files', 'qr_folder_footer', '_qrfolders_lite_qr_target_url', '_qrfolders_lite_qr_created', '_qrfolders_lite_qr_upgraded', 'qr_folder_retired', '_qrfolders_lite_qr_file', '_qrfolders_lite_qr_token');

