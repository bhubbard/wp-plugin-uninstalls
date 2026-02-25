-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ez_google_client_id', 'ez_google_client_secret', 'ez_sms_username', 'ez_sms_password', 'ez_sms_number', 'ez_sms_timer_duration', 'ez_sms_max_attempts', 'ez_sms_block_duration', 'ez_sms_send_mode', 'ez_sms_pattern_code', 'ez_sms_provider', 'ezlogin_custom_css');
DELETE FROM wp_options WHERE option_name LIKE 'ez_sms_blocked_until_%';
DELETE FROM wp_options WHERE option_name LIKE 'ez_sms_last_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'ez_sms_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'ez_sms_test_otp_%';

