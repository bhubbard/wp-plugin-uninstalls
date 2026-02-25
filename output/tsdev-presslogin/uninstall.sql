-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsdevpresslogin_frist_label_text', 'tsdevpresslogin_second_label_text', 'tsdevpresslogin_login_button_text', 'tsdevpresslogin_logo_url', 'tsdevpresslogin_primary_color', 'tsdevpresslogin_logo', 'tsdevpresslogin_background_img');

