-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows', 'wpss_cookie_message', 'wpss_show_cookie_message', 'wpss_message_position', 'wpss_message_style', 'wpss_button_text', 'wpss_cookie_name', 'wpss_cookie_life');

