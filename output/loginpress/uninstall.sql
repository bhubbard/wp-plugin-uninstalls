-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loginpress_pro_addons', 'loginpress_customization', 'loginpress_setting', 'customize_presets_settings', 'loginpress_limit_login_attempts', 'wpb_sdk_loginpress', 'loginpress_captcha_settings', 'active_sitewide_plugins', 'loginpress_hide_login', 'loginpress_social_logins', 'loginpress_active_time', 'loginpress_review_dismiss', 'loginpress_addon_dismiss_1', 'loginpress_addon_active_time', 'loginpress_friday_sale_active_time', 'loginpress_friday_21_sale_dismiss', 'loginpress_appsumo_active_time', 'loginpress_appsumo_dismiss', '_loginpress_optin', 'webarx_mv_wp_login', 'loginpress_pro_license_key', 'wpb_sdk_module_id', 'wpb_sdk_module_slug', 'wpb_api_cache', 'loginpress_api_addons', 'loginpress_pro_pop_up', 'loginpress_rdn_fetch_notifications', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%';
DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE 'rn_last_notification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_password_nag', 'loginpress_password_reset_limit', '_wp_page_template', '_rn_dismissed', 'lp_privacy_policy');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_password_nag', 'loginpress_password_reset_limit', '_wp_page_template', '_rn_dismissed', 'lp_privacy_policy');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_password_nag', 'loginpress_password_reset_limit', '_wp_page_template', '_rn_dismissed', 'lp_privacy_policy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_password_nag', 'loginpress_password_reset_limit', '_wp_page_template', '_rn_dismissed', 'lp_privacy_policy');

