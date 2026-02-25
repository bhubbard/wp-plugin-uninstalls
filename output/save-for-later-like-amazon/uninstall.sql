-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('server_allow', 'requested_activation_key', 'enable_disable_plugin', 'user_end_code_to_check', 'kbiz_registration_email', 'kabiz_button_text', 'kabiz_move_to_cart_button_text', 'get_option_save_for_list', 'kbiz_activation_key', 'api_url_for_activation');

