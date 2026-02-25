-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('editLogin_login_logo_url', 'editLogin_login_logo_image', 'editLogin_login_bg_image', 'editLogin_login_custom_font');

