-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('indexnow-is_valid_api_key', 'indexnow-admin_api_key', 'indexnow-failed_count', 'indexnow-passed_count', 'indexnow-auto_submission_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%admin_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%is_valid_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%auto_submission_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%failed_count';
DELETE FROM wp_options WHERE option_name LIKE '%passed_count';

