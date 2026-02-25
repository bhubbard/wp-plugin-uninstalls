-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('password_mismatch', 'default_country_code', 'mo_form_sms_notification_settings', 'mowc_sms_notification_settings', 'mo_wc_customer_validation_admin_email', 'mo_wc_customer_validation_company_name', 'mo_wc_customer_validation_first_name', 'mo_wc_customer_validation_last_name', 'mo_wc_customer_validation_wc_default_enable', 'mo_wc_customer_validation_wc_enable_type', 'mo_wc_customer_validation_wc_social_login_enable', 'mo_wc_customer_validation_wc_checkout_enable', 'mo_wc_customer_validation_wc_checkout_type', 'mo_wc_customer_validation_wc_redirect', 'mo_wc_customer_validation_wc_checkout_button', 'mo_wc_customer_validation_wc_checkout_guest', 'mo_wc_customer_validation_check_ln', 'mo_wc_customer_validation_wp_login_enable', 'mo_wc_customer_validation_wp_login_register_phone', 'mo_wc_customer_validation_wp_login_bypass_admin', 'mo_wc_customer_validation_wp_login_key', 'mo_wc_customer_validation_wp_member_reg_enable', 'mo_wc_customer_validation_wp_member_reg_enable_type', 'mo_wc_customer_validation_default_country_code', 'mo_wc_customer_validation_wc_checkout_popup', 'mo_wc_customer_validation_wp_login_allow_phone_login', 'mo_wc_customer_validation_wp_login_restrict_duplicates', 'mo_wc_customer_validation_blocked_domains', 'mo_wc_customer_validation_blocked_phone_numbers', 'mo_wc_customer_validation_wp_reg_restrict_duplicates', 'mo_wc_customer_validation_show_remaining_trans', 'mo_wc_customer_validation_show_dropdown_on_form', 'mo_wc_customer_validation_email_verification_lk', 'mo_wc_customer_validation_site_email_ckl', 'mo_wc_customer_validation_wc_checkout_payment_type', 'mo_wc_customer_validation_otp_length', 'mo_wc_customer_validation_otp_validity', 'mo_wc_customer_validation_generate_alphanumeric_otp', 'mo_wc_customer_validation_globally_banned_phone', 'mo_wc_customer_validation_masterotp_validity', 'mo_wc_customer_validation_masterotp_admin', 'mo_wc_customer_validation_masterotp_user', 'mo_wc_customer_validation_masterotp_admins', 'mo_wc_customer_validation_masterotp_specific_user', 'mo_wc_customer_validation_masterotp_specific_user_details', 'mo_wc_customer_validation_wc_checkout_selective_payment', 'mo_wc_customer_validation_custom_popups', 'mo_wc_customer_validation_wc_checkout_button_link_text', 'mo_wc_customer_validation_wc_billing_enable', 'mo_wc_customer_validation_wc_billing_type_enabled');
DELETE FROM wp_options WHERE option_name IN ('mo_wc_customer_validation_wc_billing_restrict_duplicates', 'mo_wc_customer_validation_wc_checkout_restrict_duplicates', 'mo_wc_customer_validation_wc_checkout_disable_auto_login', 'mo_wc_otp_success_email_message', 'mo_wc_otp_success_phone_message', 'mo_wc_otp_error_phone_message', 'mo_wc_otp_error_email_message', 'mo_wc_otp_invalid_phone_message', 'mo_wc_otp_invalid_email_message', 'mo_wc_otp_blocked_phone_message', 'mo_wc_otp_blocked_email_message', 'mo_wc_otp_invalid_message');
DELETE FROM wp_options WHERE option_name LIKE 'wcsl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'enter_otp', 'telephone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'enter_otp', 'telephone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'enter_otp', 'telephone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'enter_otp', 'telephone');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_login_timestamp';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_login_timestamp';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_login_timestamp';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_login_timestamp';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_login_timestamp_gmt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_login_timestamp_gmt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_login_timestamp_gmt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_login_timestamp_gmt';

