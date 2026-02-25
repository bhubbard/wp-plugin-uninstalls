-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('A2A_SUBSCRIBE_button_opens_new_window', 'A2A_SUBSCRIBE_onclick', 'A2A_SUBSCRIBE_button', 'A2A_SUBSCRIBE_button_custom', 'A2A_SUBSCRIBE_button_text', 'A2A_SUBSCRIBE_widget_title', 'A2A_SUBSCRIBE_additional_js_variables');

