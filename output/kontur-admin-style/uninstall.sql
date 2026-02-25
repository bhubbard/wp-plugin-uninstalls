-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kontur_style_admin_logo', 'kontur_admin_style_adminbar_background', 'kontur_admin_style_login_logo_link', 'kontur_admin_style_logo_background_image', 'kontur_admin_style_login_background_image', 'kontur-settings-checkbox-admin-style', 'kontur_style_admin_use_logo', 'kontur-settings-checkbox-login', 'kontur_admin_current_sub_menu', 'kontur_admin_adminmenuwrap', 'kontur_admin_adminmenuback', ' kontur_style_admin_logo', 'kontur-settings-checkbox-dashboard', 'kontur-settings-use-stlye', 'kontur-settings-checkbox-media', 'kontur_admin_style_background', 'kontur-admin-style-notice');

