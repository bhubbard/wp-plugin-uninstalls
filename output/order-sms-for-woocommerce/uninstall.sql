-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('global_wc_sms_gateway', 'global_wc_sms_country_code', 'global_wc_sms_enabled_statuses', 'global_wc_sms_on_hold_template', 'global_wc_sms_processing_template', 'global_wc_sms_completed_template', 'global_wc_sms_cancelled_template', 'global_wc_sms_logs', 'global_wc_sms_bulksmsbd_api_key', 'global_wc_sms_bulksmsbd_sender_id', 'global_wc_sms_twilio_account_sid', 'global_wc_sms_twilio_auth_token', 'global_wc_sms_twilio_phone_number', 'global_wc_sms_vonage_api_key', 'global_wc_sms_vonage_api_secret', 'global_wc_sms_vonage_from_number', 'global_wc_sms_msg91_auth_key', 'global_wc_sms_msg91_sender_id');

