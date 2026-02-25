-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_trash_meta_status', '_wp_trash_meta_time');

