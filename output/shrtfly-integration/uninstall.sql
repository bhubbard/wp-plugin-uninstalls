-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled_stats';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled_amp';
DELETE FROM wp_options WHERE option_name LIKE '%_api_token';
DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_choose';
DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_value';
DELETE FROM wp_options WHERE option_name LIKE '%_ads_type';

