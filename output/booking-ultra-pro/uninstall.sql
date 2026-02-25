-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bup_options', 'bup_c_key', 'bup_profile_fields', 'bup_pro_active', 'bup_my_account_page', 'bup_c_expiration', 'bup_pro_improvement_13', 'bup_auto_page_creation', 'bup_pro_improvement_12', 'bup_pro_improvement_14', 'bup_pro_improvement_15', 'bup_business_hours', 'buproaw_aweber_list', 'bup_plugin_do_activation_redirect', 'bup_dismiss_notice');
DELETE FROM wp_options WHERE option_name LIKE 'bup_pro_improvement_%';
DELETE FROM wp_options WHERE option_name LIKE 'bup_template_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reg_telephone', 'first_name', 'last_name', 'bup_account_status', 'bup_user_registered_ip', 'bup_is_client', 'bup_ultra_very_key', 'reg_telephone_code', 'reg_telephone_prefix', 'reg_telephone_iso', 'bup_mailchimp', 'bup_aweber', 'google_cal_access_token', 'google_calendar_default', 'bup_is_staff_member', 'u_profession', 'display_name', 'bup_staff_acc_setting', 'bup_profile_bg_color', 'user_pic', 'user_profile_bg', 'bup_has_gravatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('reg_telephone', 'first_name', 'last_name', 'bup_account_status', 'bup_user_registered_ip', 'bup_is_client', 'bup_ultra_very_key', 'reg_telephone_code', 'reg_telephone_prefix', 'reg_telephone_iso', 'bup_mailchimp', 'bup_aweber', 'google_cal_access_token', 'google_calendar_default', 'bup_is_staff_member', 'u_profession', 'display_name', 'bup_staff_acc_setting', 'bup_profile_bg_color', 'user_pic', 'user_profile_bg', 'bup_has_gravatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('reg_telephone', 'first_name', 'last_name', 'bup_account_status', 'bup_user_registered_ip', 'bup_is_client', 'bup_ultra_very_key', 'reg_telephone_code', 'reg_telephone_prefix', 'reg_telephone_iso', 'bup_mailchimp', 'bup_aweber', 'google_cal_access_token', 'google_calendar_default', 'bup_is_staff_member', 'u_profession', 'display_name', 'bup_staff_acc_setting', 'bup_profile_bg_color', 'user_pic', 'user_profile_bg', 'bup_has_gravatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reg_telephone', 'first_name', 'last_name', 'bup_account_status', 'bup_user_registered_ip', 'bup_is_client', 'bup_ultra_very_key', 'reg_telephone_code', 'reg_telephone_prefix', 'reg_telephone_iso', 'bup_mailchimp', 'bup_aweber', 'google_cal_access_token', 'google_calendar_default', 'bup_is_staff_member', 'u_profession', 'display_name', 'bup_staff_acc_setting', 'bup_profile_bg_color', 'user_pic', 'user_profile_bg', 'bup_has_gravatar');

