-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user', 'color_code', 'color_code2', 'user_color_code', 'user_color_code2');

