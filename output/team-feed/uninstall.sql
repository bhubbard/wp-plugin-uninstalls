-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('team_feed_access_token');
DELETE FROM wp_options WHERE option_name LIKE '%_client_id';
DELETE FROM wp_options WHERE option_name LIKE '%_client_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_code';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%_check_client_id';

