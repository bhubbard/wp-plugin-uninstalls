-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_page', 'register_page', 'link_page', 'logout_frontpage', 'bsauth_custom_button', 'bs_auth_hide_local', 'bs_auth_signup_user_url', 'bs_auth_signup_user_email', 'bs_auth_signup_display_name', 'bs_auth_signup_nickname', 'bs_auth_signup_first_name', 'bs_auth_signup_last_name', 'bs_auth_signup_description', 'bs_auth_signup_jabber', 'bs_auth_signup_aim', 'bs_auth_signup_yim', 'bs_vatsimsso_dbversion');

