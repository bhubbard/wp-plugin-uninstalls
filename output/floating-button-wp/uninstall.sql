-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('set_flbtn_bg', 'set_flbtn_color', 'set_flbtn_txt', 'set_close_txt', 'set_flbtn_active');

