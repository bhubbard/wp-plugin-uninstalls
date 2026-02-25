-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloudsecurewp_enable_email_server_error_notification', 'cloudsecurewp_two_factor_authentication_roles', 'cptui_post_types', 'update_core', 'update_plugins', 'update_themes');

