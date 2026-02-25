-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rnu_plugin_version', 'rnu_start_date', 'rnu_end_date', 'rnu_db_version', 'rnu_username_validation_pattern', 'rnu_username_validation_title', 'rnu_require_login', 'rnu_all_users', 'rnu_old_format');
DELETE FROM wp_options WHERE option_name LIKE '%_username_validation_pattern';
DELETE FROM wp_options WHERE option_name LIKE '%_require_login';
DELETE FROM wp_options WHERE option_name LIKE '%_username_validation_title';
DELETE FROM wp_options WHERE option_name LIKE '%_start_date';
DELETE FROM wp_options WHERE option_name LIKE '%_end_date';
DELETE FROM wp_options WHERE option_name LIKE '%_category';

