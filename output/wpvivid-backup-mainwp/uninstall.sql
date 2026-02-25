-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvivid_custom_select_website_size_ex', 'wpvivid_remote_backups_lock', 'medium_large_size_w', 'medium_large_size_h', 'mainwp_primaryBackup', 'mainwp_wpvivid_backups_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

