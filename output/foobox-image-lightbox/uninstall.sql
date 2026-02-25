-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_valid';
DELETE FROM wp_options WHERE option_name LIKE '%_valid_expires';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_foobox_exclude', '_foobox_include');
DELETE FROM wp_usermeta WHERE meta_key IN ('_foobox_exclude', '_foobox_include');
DELETE FROM wp_termmeta WHERE meta_key IN ('_foobox_exclude', '_foobox_include');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_foobox_exclude', '_foobox_include');

