-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hm_replace_image_rd_notice_hidden', 'hm_replace_image_first_activate', 'dirsize_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_first_activate';
DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes');

