-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shinystat_analytics_advanced_options_add_param_name', 'shinystat_analytics_advanced_options_add_param_value');
DELETE FROM wp_options WHERE option_name LIKE '%_account_name';
DELETE FROM wp_options WHERE option_name LIKE '%_account_type';
DELETE FROM wp_options WHERE option_name LIKE '%_conv_name';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_options_add_param_name';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_options_add_param_value';

