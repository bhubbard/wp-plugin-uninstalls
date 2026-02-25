-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advance_login_style', 'advance_login_style_form', 'advance_login_style_logo', 'advance_login_style_ms');

