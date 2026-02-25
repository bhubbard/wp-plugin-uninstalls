-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ds_chatbot_delete_on_uninstall', 'ds_chatbot_api_key', 'ds_chatbot_endpoint', 'ds_chatbot_system_role', 'ds_chatbot_model', 'ds_chatbot_title', 'ds_chatbot_user_color', 'ds_chatbot_bot_color', 'ds_chatbot_user_text_color', 'ds_chatbot_bot_text_color', 'ds_chatbot_input_placeholder', 'ds_chatbot_opening_prompt', 'ds_chatbot_style_version');
DELETE FROM wp_options WHERE option_name LIKE '%%';

