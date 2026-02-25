-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_alt_import_errors', 'easy_alt_import_last_rows', 'easy_alt_import_backup', 'easy_alt_import_backup_date', 'easy_alt_import_apply_errors', 'easy_alt_import_undo_errors', 'easy_alt_import_version', 'easy_alt_import_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

