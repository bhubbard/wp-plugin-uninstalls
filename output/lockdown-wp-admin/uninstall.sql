-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ld_http_auth', 'ld_hide_wp_admin', 'active_sitewide_plugins', 'ld_login_base', 'ld_private_users');

