-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bwt-failed_count', 'bwt-passed_count', 'bwt-is_valid_api_key', 'bwt-admin_api_key', 'bwt-auto_submission_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%admin_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%is_valid_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%auto_submission_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%failed_count';
DELETE FROM wp_options WHERE option_name LIKE '%passed_count';

