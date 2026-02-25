-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy-watermark-first-booted', '_ew_preview_image_id');
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%-settings-general';
DELETE FROM wp_options WHERE option_name LIKE '%-settings-image';
DELETE FROM wp_options WHERE option_name LIKE '%-settings-text';
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ew_backup_file', '_ew_applied_watermarks', '_ew_has_backup', '_ew_used_as_watermark', '_ew_attachment_version', '_wp_attachment_metadata', '_ew_tmp_params');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ew_backup_file', '_ew_applied_watermarks', '_ew_has_backup', '_ew_used_as_watermark', '_ew_attachment_version', '_wp_attachment_metadata', '_ew_tmp_params');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ew_backup_file', '_ew_applied_watermarks', '_ew_has_backup', '_ew_used_as_watermark', '_ew_attachment_version', '_wp_attachment_metadata', '_ew_tmp_params');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ew_backup_file', '_ew_applied_watermarks', '_ew_has_backup', '_ew_used_as_watermark', '_ew_attachment_version', '_wp_attachment_metadata', '_ew_tmp_params');

