-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-media-folders-options', 'wp-media-folders-tables', 'wpmfs_queue_running', 'wp-media-folders-token', 'wp-media-folders-disclaimer-confirmed', 'wp-media-folders-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file');

