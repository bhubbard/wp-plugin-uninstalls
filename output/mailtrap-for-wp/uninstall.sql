-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailtrap_api_token', 'mailtrap_enabled', 'mailtrap_username', 'mailtrap_password', 'mailtrap_port', 'mailtrap_secure');

