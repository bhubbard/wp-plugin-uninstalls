-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled_stats';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled_amp';
DELETE FROM wp_options WHERE option_name LIKE '%_id';
DELETE FROM wp_options WHERE option_name LIKE '%_popads_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_type';
DELETE FROM wp_options WHERE option_name LIKE '%_domain';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_domain';
DELETE FROM wp_options WHERE option_name LIKE '%_nofollow';
DELETE FROM wp_options WHERE option_name LIKE '%_website_entry_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_protocol';
DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_choose';
DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_value';
DELETE FROM wp_options WHERE option_name LIKE '%_widget_month_filter';
DELETE FROM wp_options WHERE option_name LIKE '%_public_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_api_key';

