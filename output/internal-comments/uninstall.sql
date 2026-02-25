-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_trash_meta_comments_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_trash_meta_comments_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_trash_meta_comments_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_trash_meta_comments_status');

