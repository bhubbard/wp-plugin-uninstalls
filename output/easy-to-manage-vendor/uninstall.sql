-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emv_default_country_select', 'EMV_admin_phone_number', 'emv_enable_automatic_sms', 'emv_enable_vendor_automatic_sms', 'emv_disable_vendor_chat', 'emv_enable_edit_mode', 'EMV_version', 'EMV_install_time', 'emv_run_first_time', 'emv_message_subject', 'emv_message_desc', 'emv_enable_api_edit_mode', 'EMV_active', 'emv_per_page', 'emv_custom_css', 'emv_select_api', 'emv_twilio_account_sid', 'emv_twilio_auth_token', 'emv_twilio_sender_number', 'emv_ultramsg_instance_id', 'emv_ultramsg_auth_token', 'wcfm_endpoints', 'emv_hide_phone_number', 'emv_disable_vendor_number_Forcibly');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('EMV_phone_number', 'emv_user_sms_status', 'EMV_current_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('EMV_phone_number', 'emv_user_sms_status', 'EMV_current_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('EMV_phone_number', 'emv_user_sms_status', 'EMV_current_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('EMV_phone_number', 'emv_user_sms_status', 'EMV_current_message');

