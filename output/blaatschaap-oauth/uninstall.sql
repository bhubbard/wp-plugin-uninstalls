-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_page', 'register_page', 'link_page', 'logout_frontpage', 'bsauth_custom_button', 'bs_auth_hide_local', 'bs_auth_signup_user_url', 'bs_auth_signup_user_email', 'bs_auth_signup_display_name', 'bs_auth_signup_nickname', 'bs_auth_signup_first_name', 'bs_auth_signup_last_name', 'bs_auth_signup_description', 'bs_auth_signup_jabber', 'bs_auth_signup_aim', 'bs_auth_signup_yim', 'bsauth_oauth_debug', 'bsauth_oauth_debug_http', 'blaatlogin_page', 'bs_oauth_dbversion', 'bs_debug_updatedb', 'bs_oauth_dataversion', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

