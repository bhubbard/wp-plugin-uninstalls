-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonkasoft_logout_url', 'wonkasoft_logout_custom_url', 'wonkasoft_login_url', 'wonkasoft_login_custom_url');

