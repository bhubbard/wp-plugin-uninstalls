-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exit_popup_cookie_expire', 'exit_popup_click_outside', 'exit_popup_logged_out_users_only', 'exit_popup_modal_width', 'exit_popup_modal_height', 'exit_popup_popup_title_color', 'exit_popup_popup_title', 'exit_popup_popup_footer', 'exit_popup_popup_body', 'exit_popup_languages', 'exit-popup-exclude-from-posts', 'exit_popup_powered_by');

