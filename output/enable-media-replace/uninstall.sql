-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_media_replace', 'emr_news', 'emr_url_cache');
DELETE FROM wp_options WHERE option_name LIKE '%-notices';
DELETE FROM wp_options WHERE option_name LIKE 'emr_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_emr_replace_author', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_emr_replace_author', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_emr_replace_author', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_emr_replace_author', '_wp_attached_file', '_wp_attachment_backup_sizes');

