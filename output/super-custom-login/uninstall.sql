-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scl_logo_url', 'scl_logo_width', 'scl_logo_height', 'scl_background_color', 'scl_backtoblog_color', 'scl_nav_color', 'scl_login_form_background_color', 'scl_login_form_text_color', 'scl_log_in_button_background_color', 'scl_log_in_button_background_hover_color', 'scl_log_in_button_text_color', 'scl_log_in_button_text_hover_color', 'scl_login_error_background_color', 'scl_login_error_border_color', 'scl_login_error_text_color');

