-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith_login_mascotte', 'yith_login_mascotte_url', 'yith_login_background_color', 'yith_login_background_image', 'yith_login_background_repeat', 'yith_login_background_position', 'yith_login_background_attachment', 'yith_login_logo_image', 'yith_login_logo_color', 'yith_login_logo_width', 'yith_login_logo_height', 'yith_login_container_width', 'yith_login_typo_input', 'yith_login_typo_text', 'yith_login_typo_submit', 'yith_login_custom_style', 'yith_login_color_input', 'yith_login_border_input', 'yith_login_color_input_focus', 'yith_login_border_input_focus', 'yith_login_submit_color', 'yith_login_submit_border_color', 'yith_login_typo_submit_hover', 'yith_login_submit_color_hover', 'yith_login_submit_border_color_hover', 'yith_login_username_label', 'yith_login_password_label', 'yith_login_enable', 'active_sitewide_plugins');

