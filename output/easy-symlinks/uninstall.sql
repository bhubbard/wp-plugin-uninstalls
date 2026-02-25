-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caes_target', 'caes_link', 'caes_symlink_list', 'caes_symlink_list_lastdelete');
DELETE FROM wp_options WHERE option_name LIKE '%version';

