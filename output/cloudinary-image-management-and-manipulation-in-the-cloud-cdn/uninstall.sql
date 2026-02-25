-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloudinary_settings_cache', 'cloudinary_global_transformations', 'cloudinary_media_display', '_cld_cli_analyzed', '_cld_disable_http_upload', '_autosync_check');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt', '_wp_attached_file', '_wp_attachment_metadata', '_wpml_cld', '_cld_unsynced');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt', '_wp_attached_file', '_wp_attachment_metadata', '_wpml_cld', '_cld_unsynced');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt', '_wp_attached_file', '_wp_attachment_metadata', '_wpml_cld', '_cld_unsynced');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt', '_wp_attached_file', '_wp_attachment_metadata', '_wpml_cld', '_cld_unsynced');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_terms';

