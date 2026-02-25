-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_cleanup_step_size', 'image_cleanup_post_step_size', 'image_cleanup_skip_paths', 'image_cleanup_backups', 'image_cleanup_resultcount', 'image_cleanup_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_metadata');

