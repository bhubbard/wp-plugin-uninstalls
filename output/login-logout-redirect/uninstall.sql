-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_logout_redirect_login_enable', 'login_logout_redirect_login', 'login_logout_redirect_login_page', 'login_logout_redirect_login_custom', 'login_logout_redirect_logout_enable', 'login_logout_redirect_logout', 'login_logout_redirect_logout_page', 'login_logout_redirect_logout_custom');

