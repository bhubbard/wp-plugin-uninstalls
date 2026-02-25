-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('integrity-checker_apikey', 'integrity-checker_siteid', 'wp_checksum_apikey', 'wp_checksum_siteid', 'integrity_checker_scheduledrun', 'update_plugins', 'integrity-checker_accesslevel');
DELETE FROM wp_options WHERE option_name LIKE '%_apikey';
DELETE FROM wp_options WHERE option_name LIKE '%_cron';
DELETE FROM wp_options WHERE option_name LIKE '%_dbversion';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_siteid';
DELETE FROM wp_options WHERE option_name LIKE '%_accesslevel';
DELETE FROM wp_options WHERE option_name LIKE 'tt_teststate_%';

