-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pfmswp-options', 'pfmswp-options-filesystem', 'installed', 'pfmswp-options-access_control', 'pfmswp-options-system_security', 'pfmswp-options-monitoring', 'update_core', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%installed';
DELETE FROM wp_options WHERE option_name LIKE '%installed_plugins';
DELETE FROM wp_options WHERE option_name LIKE '%installed_themes';
DELETE FROM wp_options WHERE option_name LIKE '%audit_passwords';
DELETE FROM wp_options WHERE option_name LIKE '%activated_rename_login';
DELETE FROM wp_options WHERE option_name LIKE '%audit_files';
DELETE FROM wp_options WHERE option_name LIKE '%installed_htaccess';
DELETE FROM wp_options WHERE option_name LIKE '%installed_htaccess_file';
DELETE FROM wp_options WHERE option_name LIKE '%installed_robot_txt';
DELETE FROM wp_options WHERE option_name LIKE '%installed_robots_txt_file';
DELETE FROM wp_options WHERE option_name LIKE '%last_version_downloaded_targz';
DELETE FROM wp_options WHERE option_name LIKE 'pfms_wp::bruteforce_attempts-%';

