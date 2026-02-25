-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customlogin_heading', 'customlogin_register_link', 'customlogin_forgotton_link', 'customlogin_welcome_heading', 'customlogin_avatar', 'customlogin_logged_in_links', 'customlogin_cubepoints', 'customlogin_cubepoints_text');

