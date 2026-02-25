-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwd_login_logo', 'cwd_login_back', 'cwd_login_button', 'cwd_login_border', 'cwd_login_form_border', 'cwd_login_form_shadow', 'cwd_login_back_color');

