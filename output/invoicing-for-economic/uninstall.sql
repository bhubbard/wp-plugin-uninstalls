-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_iwep_settings_plugin_active', '_iwe_settings_plugin_active');
DELETE FROM wp_options WHERE option_name LIKE '%_input_secret_token';
DELETE FROM wp_options WHERE option_name LIKE '%_input_grant_token';
DELETE FROM wp_options WHERE option_name LIKE '%_select_productline';
DELETE FROM wp_options WHERE option_name LIKE '%_select_customer';
DELETE FROM wp_options WHERE option_name LIKE '%_select_layout';
DELETE FROM wp_options WHERE option_name LIKE '%_tokens_valid';

