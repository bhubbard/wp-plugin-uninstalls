-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oa_social_login_settings', 'oa_social_login_activation_message', 'oa_social_login_hide_rate_message', 'oa_social_login_postpone_rate_message', 'oa_social_login_api_settings_verified');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oa_social_login_identity_provider', 'oa_social_login_user_token', 'description', 'oa_social_login_request_email', 'oa_social_login_user_thumbnail', 'oa_social_login_user_picture');
DELETE FROM wp_usermeta WHERE meta_key IN ('oa_social_login_identity_provider', 'oa_social_login_user_token', 'description', 'oa_social_login_request_email', 'oa_social_login_user_thumbnail', 'oa_social_login_user_picture');
DELETE FROM wp_termmeta WHERE meta_key IN ('oa_social_login_identity_provider', 'oa_social_login_user_token', 'description', 'oa_social_login_request_email', 'oa_social_login_user_thumbnail', 'oa_social_login_user_picture');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oa_social_login_identity_provider', 'oa_social_login_user_token', 'description', 'oa_social_login_request_email', 'oa_social_login_user_thumbnail', 'oa_social_login_user_picture');

