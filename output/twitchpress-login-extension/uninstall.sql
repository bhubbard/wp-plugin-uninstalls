-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitchpress_registration_requirevalidemail', 'twitchpress_automatic_registration', 'twitchpress_login_loggedin_page_id', 'twitchpress_login_loginpage_position', 'twitchpress_login_button', 'twitchpress_login_loginpage_type', 'twitchpress_login_requiretwitch', 'twitchpress_login_button_text', 'twitchpress_login_redirect_to_custom', 'twitchpress_login_mainform_page_id', 'twitchpress_login_messages', 'twitchpress_loginextension_version');
DELETE FROM wp_options WHERE option_name LIKE 'twitchpress_oauth_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twitchpress_twitch_id', 'twitchpress_twitch_email', 'twitchpress_twitch_bio', 'twitchpress_twitch_created_at', 'twitchpress_twitch_display_name', 'twitchpress_twitch_email_verified', 'twitchpress_twitch_name', 'twitchpress_twitch_partnered', 'twitchpress_twitch_updated_at', 'twitchpress_auth_time', 'twitchpress_code', 'twitchpress_token', 'twitchpress_token_refresh');
DELETE FROM wp_usermeta WHERE meta_key IN ('twitchpress_twitch_id', 'twitchpress_twitch_email', 'twitchpress_twitch_bio', 'twitchpress_twitch_created_at', 'twitchpress_twitch_display_name', 'twitchpress_twitch_email_verified', 'twitchpress_twitch_name', 'twitchpress_twitch_partnered', 'twitchpress_twitch_updated_at', 'twitchpress_auth_time', 'twitchpress_code', 'twitchpress_token', 'twitchpress_token_refresh');
DELETE FROM wp_termmeta WHERE meta_key IN ('twitchpress_twitch_id', 'twitchpress_twitch_email', 'twitchpress_twitch_bio', 'twitchpress_twitch_created_at', 'twitchpress_twitch_display_name', 'twitchpress_twitch_email_verified', 'twitchpress_twitch_name', 'twitchpress_twitch_partnered', 'twitchpress_twitch_updated_at', 'twitchpress_auth_time', 'twitchpress_code', 'twitchpress_token', 'twitchpress_token_refresh');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twitchpress_twitch_id', 'twitchpress_twitch_email', 'twitchpress_twitch_bio', 'twitchpress_twitch_created_at', 'twitchpress_twitch_display_name', 'twitchpress_twitch_email_verified', 'twitchpress_twitch_name', 'twitchpress_twitch_partnered', 'twitchpress_twitch_updated_at', 'twitchpress_auth_time', 'twitchpress_code', 'twitchpress_token', 'twitchpress_token_refresh');

