-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jay_login_register_settings', 'jay_login_register_addons_status', 'jay_login_register_access_settings', 'jay_login_register_user_columns_settings', 'jay_login_register_custom_columns_settings', 'jay_login_register_user_panel_settings', 'jay_login_register_version', '_jay_relog_pages_created_notice', 'jay_permission_counts');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_gf_pending_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_otp_fail_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_user_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_new_user_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_otp_block_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_new_nc_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_new_pn_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_email_otp_register_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_otp_login_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_change_phone_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_email_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_login_register_math_fail_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_onboarding_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_panel_old_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_panel_permit_new_num_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_panel_new_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_panel_old_email_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_panel_permit_new_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_panel_new_email_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'jay_panel_pass_permit_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jay_mobile', 'digits_phone', 'digits_phone_no', 'codemeli', 'gozarname', '_jay_login_register_requires_login', '_jay_login_register_protection_method', '_jay_login_register_required_meta_key', '_jay_login_register_meta_key_redirect_page_id', '_jay_login_register_meta_error_title', '_jay_login_register_meta_error_button', '_jay_login_register_meta_error_message', '_jay_login_register_allowed_roles', '_jay_relog_dismissed_setup_notice', 'jay_can_edit_profile');
DELETE FROM wp_usermeta WHERE meta_key IN ('jay_mobile', 'digits_phone', 'digits_phone_no', 'codemeli', 'gozarname', '_jay_login_register_requires_login', '_jay_login_register_protection_method', '_jay_login_register_required_meta_key', '_jay_login_register_meta_key_redirect_page_id', '_jay_login_register_meta_error_title', '_jay_login_register_meta_error_button', '_jay_login_register_meta_error_message', '_jay_login_register_allowed_roles', '_jay_relog_dismissed_setup_notice', 'jay_can_edit_profile');
DELETE FROM wp_termmeta WHERE meta_key IN ('jay_mobile', 'digits_phone', 'digits_phone_no', 'codemeli', 'gozarname', '_jay_login_register_requires_login', '_jay_login_register_protection_method', '_jay_login_register_required_meta_key', '_jay_login_register_meta_key_redirect_page_id', '_jay_login_register_meta_error_title', '_jay_login_register_meta_error_button', '_jay_login_register_meta_error_message', '_jay_login_register_allowed_roles', '_jay_relog_dismissed_setup_notice', 'jay_can_edit_profile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jay_mobile', 'digits_phone', 'digits_phone_no', 'codemeli', 'gozarname', '_jay_login_register_requires_login', '_jay_login_register_protection_method', '_jay_login_register_required_meta_key', '_jay_login_register_meta_key_redirect_page_id', '_jay_login_register_meta_error_title', '_jay_login_register_meta_error_button', '_jay_login_register_meta_error_message', '_jay_login_register_allowed_roles', '_jay_relog_dismissed_setup_notice', 'jay_can_edit_profile');

