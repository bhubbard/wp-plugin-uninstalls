-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moving_media_library_number_files', 'moving_media_library_mail_send', 'moving_media_library_export_files');

