-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ciam_api_settings', 'ciam_authentication_settings', 'ciam_uninstall_settings', 'Ciam_Authentication_settings', 'Ciam_Sso_Page_settings', 'LoginRadius_API_settings', 'Ciam_uninstall_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ciam_uid', 'ciam_id', 'accesstoken', 'ciam_pass_error', 'user_avatar_image', 'ciam_current_user_uid', 'ciam_current_account_linked', 'ciam_message_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('ciam_uid', 'ciam_id', 'accesstoken', 'ciam_pass_error', 'user_avatar_image', 'ciam_current_user_uid', 'ciam_current_account_linked', 'ciam_message_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('ciam_uid', 'ciam_id', 'accesstoken', 'ciam_pass_error', 'user_avatar_image', 'ciam_current_user_uid', 'ciam_current_account_linked', 'ciam_message_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ciam_uid', 'ciam_id', 'accesstoken', 'ciam_pass_error', 'user_avatar_image', 'ciam_current_user_uid', 'ciam_current_account_linked', 'ciam_message_text');

