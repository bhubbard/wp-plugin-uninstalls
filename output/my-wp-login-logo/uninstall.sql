-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_custom_login_logo_fadein', 'wp_custom_login_logo_fadetime', 'wp_custom_login_logo_url', 'wp_custom_login_logo_height', 'wp_custom_login_logo_width', 'wp_custom_login_url', 'wp_custom_login_title', 'wp_custom_login_logo_message');

