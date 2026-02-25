-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woow_pdf_display_settings_compress', 'woow_pdf_display_settings_watermark', 'woow_pdf_display_general_settings', 'woow_pdf_display_settings_format_watermark');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file_backup', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file_backup', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file_backup', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file_backup', '_wp_attached_file');

