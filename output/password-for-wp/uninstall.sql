-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g3_password_status', 'g3_password_pass', 'g3_text1', 'g3_text2', 'g3_color_text');

