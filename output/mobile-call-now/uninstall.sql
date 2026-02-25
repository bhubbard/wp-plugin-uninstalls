-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobile_calL_now', 'mobile_calL_now_activation', 'mobile_calL_now_text', 'color1', 'color2', 'color3', 'color4');
DELETE FROM wp_options WHERE option_name LIKE 'color%';

