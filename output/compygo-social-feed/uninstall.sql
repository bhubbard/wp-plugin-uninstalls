-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cgusf_api_call_tick');
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%facebook_app_id';
DELETE FROM wp_options WHERE option_name LIKE '%facebook_app_secret';
DELETE FROM wp_options WHERE option_name LIKE '%youtube_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%stats';
DELETE FROM wp_options WHERE option_name LIKE '%api_call_count';
DELETE FROM wp_options WHERE option_name LIKE '%locale';
DELETE FROM wp_options WHERE option_name LIKE '%cache_time';
DELETE FROM wp_options WHERE option_name LIKE '%cache_unit';
DELETE FROM wp_options WHERE option_name LIKE '%strings';
DELETE FROM wp_options WHERE option_name LIKE '%custom_css';
DELETE FROM wp_options WHERE option_name LIKE '%license_key';
DELETE FROM wp_options WHERE option_name LIKE '%logs';
DELETE FROM wp_options WHERE option_name LIKE '%sources';
DELETE FROM wp_options WHERE option_name LIKE '%timezone';

