-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user_registration_default_form_page_id', 'user_registration_myaccount_page_id', 'toms_social_login__ajax_order', 'toms_social_login_unbind_enabled', 'toms_social_login_binding_enabled', 'toms_social_login_style', 'toms_social_login_wechat_enabled', 'toms_social_login_qq_enabled', 'toms_social_login_weibo_enabled', 'toms_social_login_dingtalk_enabled', 'toms_social_login_github_enabled', 'toms_social_login_google_enabled', 'toms_social_login_facebook_enabled', 'toms_social_login_paypal_enabled', 'toms_social_login_wechat_client_id', 'toms_social_login_qq_client_id', 'toms_social_login_weibo_client_id', 'toms_social_login_dingtalk_client_id', 'toms_social_login_github_client_id', 'toms_social_login_google_client_id', 'toms_social_login_facebook_client_id', 'toms_social_login_paypal_client_id', 'toms_social_login_wechat_secret_key', 'toms_social_login_qq_secret_key', 'toms_social_login_weibo_secret_key', 'toms_social_login_dingtalk_secret_key', 'toms_social_login_github_secret_key', 'toms_social_login_google_secret_key', 'toms_social_login_facebook_secret_key', 'toms_social_login_paypal_secret_key', 'toms_social_login_wechat_callback_url', 'toms_social_login_qq_callback_url', 'toms_social_login_weibo_callback_url', 'toms_social_login_dingtalk_callback_url', 'toms_social_login_github_callback_url', 'toms_social_login_google_callback_url', 'toms_social_login_facebook_callback_url', 'toms_social_login_paypal_callback_url', 'toms_social_login_clear_data');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_ajax_order';
DELETE FROM wp_options WHERE option_name LIKE '%style';
DELETE FROM wp_options WHERE option_name LIKE '%_client_id';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_callback_url';
DELETE FROM wp_options WHERE option_name LIKE '%binding_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%unbind_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%clear_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ur_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ur_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ur_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ur_form_id');

