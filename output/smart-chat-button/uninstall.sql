-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_chat_button_settings', 'smart_chat_button_click_data');

