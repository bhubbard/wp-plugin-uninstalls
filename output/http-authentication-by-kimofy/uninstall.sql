-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('http_auth_username', 'http_auth_password', 'http_auth_message', 'http_auth_apply', 'http_auth_activate');

