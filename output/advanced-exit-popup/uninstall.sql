-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_exit_popup_box', 'advanced_exit_popup_popup_title_color', 'advanced_exit_popup_popup_title', 'advanced_exit_popup_popup_bg_color', 'advanced_exit_popup_popup_body', 'advanced_exit_popup_popup_footer', 'advanced_exit_popup_cookie_expire', 'advanced_exit_popup_modal_width', 'advanced_exit_popup_modal_height', 'advanced_exit_popup_powered_by');

