-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwt_auth_pro_settings', 'jwt_auth_pro_general_settings', 'jwt_auth_cookie_config', 'jwt_auth_pro_version', 'jwt_auth_pro_deactivation_notice');

