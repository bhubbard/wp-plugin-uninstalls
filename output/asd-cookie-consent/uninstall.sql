-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asd_cookie_consent', 'theme', 'position', 'back_color', 'text_color', 'message', 'show_link', 'text_cookie_info', 'href_cookie_info', 'btn_text', 'btn_color', 'btn_text_color', 'expiry');

