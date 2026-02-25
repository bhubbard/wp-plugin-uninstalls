-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('okvoauth_login_method', 'okvoauth_login_cookie_expiration', 'okvoauth_google_client_id', 'okvoauth_google_client_secret', 'widget_rdoauth_loginlinks_widget', 'registration', 'rundiz-oauth-error');

