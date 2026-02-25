-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uploadmate_enable_uploads', 'uploadmate_max_file_size', 'uploadmate_upload_label', 'uploadmate_settings', 'uploadmate_activated_at');

