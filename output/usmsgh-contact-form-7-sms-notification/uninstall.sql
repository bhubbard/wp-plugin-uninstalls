-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7is_history');
DELETE FROM wp_options WHERE option_name LIKE '%api_token';
DELETE FROM wp_options WHERE option_name LIKE '%sender_id';
DELETE FROM wp_options WHERE option_name LIKE '%reg_phone';
DELETE FROM wp_options WHERE option_name LIKE '%country';
DELETE FROM wp_options WHERE option_name LIKE '%country_code';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_international_sms_%';
DELETE FROM wp_options WHERE option_name LIKE '%_welcome_screen_activation_redirect';

