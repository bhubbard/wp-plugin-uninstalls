-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quikwit_rest_api_status');
DELETE FROM wp_options WHERE option_name LIKE '%tokens';
DELETE FROM wp_options WHERE option_name LIKE '%user_data';
DELETE FROM wp_options WHERE option_name LIKE '%agents';
DELETE FROM wp_options WHERE option_name LIKE '%chatbot_settings';
DELETE FROM wp_options WHERE option_name LIKE '%widget_data';

