-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpclp_login_image', 'mpclp_login_image_link', 'mpclp_login_image_height', 'mpclp_login_background', 'mpclp_background', 'mpclp_background_repeat', 'mpclp_background_size', 'mpclp_login_form_background', 'mpclp_login_form_label', 'mpclp_login_message', 'mpclp_login_btn_background', 'mpclp_login_btn_background_hover', 'mpclp');

