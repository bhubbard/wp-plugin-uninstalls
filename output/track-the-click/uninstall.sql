-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('track_the_click_license_status', 'track_the_click_exclude_addresses', 'date_format ', 'active_sitewide_plugins', 'track_the_click_local', 'track_the_click_version', 'track_the_click_click_counts', 'track_the_click_retain_days', 'track_the_click_ga_options', 'track_the_click_remove_noreferrer', 'track_the_click_track_license', 'track_the_click_track_license_status', 'track_the_click_track_admins', 'track_the_click_track_users', 'track_the_click_patterns_1', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_local';
DELETE FROM wp_options WHERE option_name LIKE '%_retain_days';
DELETE FROM wp_options WHERE option_name LIKE '%_exclude_addresses';
DELETE FROM wp_options WHERE option_name LIKE '%_click_counts';
DELETE FROM wp_options WHERE option_name LIKE '%_remove_noreferrer';
DELETE FROM wp_options WHERE option_name LIKE '%_track_admins';
DELETE FROM wp_options WHERE option_name LIKE '%_track_users';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

