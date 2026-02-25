-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oa_single_sign_on_settings', 'oa_single_sign_welcome_read', 'oa_single_sign_on_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oa_single_sign_on_user_token', 'oa_single_sign_on_identity_token', 'oa_single_sign_on_sso_session_token', 'oa_single_sign_on_sso_session_token_expiration');
DELETE FROM wp_usermeta WHERE meta_key IN ('oa_single_sign_on_user_token', 'oa_single_sign_on_identity_token', 'oa_single_sign_on_sso_session_token', 'oa_single_sign_on_sso_session_token_expiration');
DELETE FROM wp_termmeta WHERE meta_key IN ('oa_single_sign_on_user_token', 'oa_single_sign_on_identity_token', 'oa_single_sign_on_sso_session_token', 'oa_single_sign_on_sso_session_token_expiration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oa_single_sign_on_user_token', 'oa_single_sign_on_identity_token', 'oa_single_sign_on_sso_session_token', 'oa_single_sign_on_sso_session_token_expiration');

