-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tw_setting_twilio_account_sid', 'tw_setting_twilio_auth_token', 'tw_setting_twilio_number');

