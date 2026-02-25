-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfts_formidable_twilio_sms_sender_id', 'wfts_formidable_twilio_sms_password', 'wfts_formidable_twilio_sms_mobile', 'wfts_formidable_twilio_sms_mobile_cc', 'wfts_formidable_twilio_sms_field_id', 'wfts_formidable_twilio_sms_msg', 'wfts_formidable_twilio_sms_msg_owner', 'wfts_formidable_twilio_sms_debug', 'wfts_formidable_twilio_sms_error_log_path', 'wp_formidable_twilio_sms_debug', 'wp_formidable_twilio_sms_error_log_path', 'wp_formidable_twilio_sms_field_id', 'wp_formidable_twilio_sms_sender_id', 'wp_formidable_twilio_sms_password', 'wp_formidable_twilio_sms_mobile', 'wp_formidable_twilio_sms_mobile_cc', 'wp_formidable_twilio_sms_msg', 'wp_formidable_twilio_sms_msg_owner');

