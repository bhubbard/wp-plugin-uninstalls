-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_key', 'merchant_name', 'terminal_name', 'splitit_environment', 'splitit_logged_user_data', 'merchant_settings', 'splitit_last_activation_time', 'splitit_last_deactivation_time');
DELETE FROM wp_options WHERE option_name LIKE '%_new_login';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_client_id';
DELETE FROM wp_options WHERE option_name LIKE '%_client_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_merchant_id';
DELETE FROM wp_options WHERE option_name LIKE '%_terminal_id';
DELETE FROM wp_options WHERE option_name LIKE 'splitit_code_verifier_%';
DELETE FROM wp_options WHERE option_name LIKE 'splitit_id_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'splitit_merchants_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'splitit_terminals_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'splitit_credentials_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'splitit_access_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'splitit_cancelled_order_message_%';

