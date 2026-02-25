-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azure_login_setting_flow', 'o365_user_auth_online_access_token', 'o365_userauth_verify_auth_flow', 'o365_base_plugin_is_verify', 'o365_settings', 'o365_user_auth_online_token_expires', 'o365_user_auth_online_refresh_token', 'wpcf-usermeta', '365_plugin_top_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aaduserobjectid', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('aaduserobjectid', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('aaduserobjectid', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aaduserobjectid', 'nickname');

