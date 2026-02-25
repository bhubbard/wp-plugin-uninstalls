-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mediamoo_dos_key', 'mediamoo_dos_secret', 'mediamoo_dos_endpoint', 'mediamoo_dos_container', 'mediamoo_dos_storage_path', 'mediamoo_dos_cdn_url', 'mediamoo_dos_storage_file_only', 'mediamoo_dos_storage_file_delete', 'mediamoo_dos_filter', 'mediamoo_dos_original_upload_url_path', 'mediamoo_dos_original_upload_path');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes');

