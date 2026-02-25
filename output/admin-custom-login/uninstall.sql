-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Admin_custome_login_gcaptcha', 'Admin_custome_login_top', 'Admin_custome_login_Slidshow', 'Admin_custome_login_Social', 'Admin_custome_login_login', 'Admin_custome_login_dashboard', 'Admin_custome_login_text', 'Admin_custome_login_logo', 'Admin_custome_login_Version', 'plugin_erident_settings');

