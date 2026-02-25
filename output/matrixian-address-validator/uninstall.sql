-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('matrixian_enabled', 'matrixian_api_user', 'matrixian_api_password', 'matrixian_auth_token');

