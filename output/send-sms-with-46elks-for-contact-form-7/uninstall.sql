-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-sms-46elks-from', 'wp-sms-46elks-default-countrycode', 'wp-sms-46elks-balancealert', 'wp-sms-46elks-balancealerte-mail', 'wp-sms-46elks-balancealert-phone-number', 'wp-sms-46elks-balancealert-sent', 'wp-sms-46elks-api-username', 'wp-sms-46elks-api-password', 'wp-sms-46elks-cf7-form-name', 'wp-sms-46elks-cf7-send-sms', 'wp-sms-46elks-cf7-send-to', 'wp-sms-46elks-cf7-sms-content', 'wp-sms-46elks-cf7-sender-id', 'wp-sms-46elks-cf7-from');
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-form-name';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-from';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-sms-content';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-sender-id';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-send-to';
DELETE FROM wp_options WHERE option_name LIKE '%-balancealert';
DELETE FROM wp_options WHERE option_name LIKE '%-balancealert-sent';
DELETE FROM wp_options WHERE option_name LIKE '%-from';
DELETE FROM wp_options WHERE option_name LIKE '%-balancealert-email';
DELETE FROM wp_options WHERE option_name LIKE '%-balancealert-phone-number';
DELETE FROM wp_options WHERE option_name LIKE '%-api-username';
DELETE FROM wp_options WHERE option_name LIKE '%-api-password';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-sender-id-test';
DELETE FROM wp_options WHERE option_name LIKE '%-default-countrycode';

