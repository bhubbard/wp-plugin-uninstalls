-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ual_login_button_text', 'ual_text_above_form', 'ual_login_error_msg', 'ual_redirect_login');

