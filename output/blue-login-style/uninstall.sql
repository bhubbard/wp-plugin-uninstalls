-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blue_upload_logo', 'blue_custom_style', 'blue_upload_background', 'blue_upload_repeat', 'blue_upload_position', 'blue_login_redirect', 'blue_logout_redirect', 'blue_register_redirect', 'blue_login_message', 'blue_default_theme');

