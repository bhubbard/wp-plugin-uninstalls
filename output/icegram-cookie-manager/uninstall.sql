-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icegram_cm_field1_cookie_message', 'icegram_cm_field3_cookie_button_text', 'icegram_cm_field2_cookie_expire_time', 'icegram_cm_field4_cookie_bg_color', 'icegram_cm_field5_cookie_text_color', 'icegram_cm_field6_cookie_button_color', 'icegram_cm_field7_cookie_button_text_color');

