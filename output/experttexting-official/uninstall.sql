-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('et_balance', 'etApiAuth', 'et_notifications', 'resend_msg_request', 'et_send_sms', 'expt_rmfile', 'et_api_set', 'etApiAuthHidden', 'et_balance_datetime', 'et_integration_edd', 'et_integration_woocommerce', 'et_integration_gf', 'et_integration_qf', 'et_integration_bp', 'et_newsletter', 'et_menu', 'et_plugin_db_version', 'et_plugin_update_redirect_to', 'et_integration', 'et_integration_cf7', 'et_general_set', 'et_subscriber_data', '__expttxt_need_upgrade');
DELETE FROM wp_options WHERE option_name LIKE 'et_wpcf7_%';
DELETE FROM wp_options WHERE option_name LIKE 'et_wpcf7_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'expttxt_log_%';
DELETE FROM wp_options WHERE option_name LIKE 'et_send_code_limit_time%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('expt_mobile', '_billing_phone', 'expttxt_verified', 'expttxt_verify_code', 'expttxt_user_register', 'et_sms_mob_dial_code', 'expttxt_number_invalid', 'expttxt_number_exist', 'expt_mobile_code', 'expttxt_verify_code_entry', 'expt_enable_otp', 'expttxt_code_count', 'expttxt_otp_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('expt_mobile', '_billing_phone', 'expttxt_verified', 'expttxt_verify_code', 'expttxt_user_register', 'et_sms_mob_dial_code', 'expttxt_number_invalid', 'expttxt_number_exist', 'expt_mobile_code', 'expttxt_verify_code_entry', 'expt_enable_otp', 'expttxt_code_count', 'expttxt_otp_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('expt_mobile', '_billing_phone', 'expttxt_verified', 'expttxt_verify_code', 'expttxt_user_register', 'et_sms_mob_dial_code', 'expttxt_number_invalid', 'expttxt_number_exist', 'expt_mobile_code', 'expttxt_verify_code_entry', 'expt_enable_otp', 'expttxt_code_count', 'expttxt_otp_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('expt_mobile', '_billing_phone', 'expttxt_verified', 'expttxt_verify_code', 'expttxt_user_register', 'et_sms_mob_dial_code', 'expttxt_number_invalid', 'expttxt_number_exist', 'expt_mobile_code', 'expttxt_verify_code_entry', 'expt_enable_otp', 'expttxt_code_count', 'expttxt_otp_count');

