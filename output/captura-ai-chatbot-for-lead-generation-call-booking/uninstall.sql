-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('captura_chatbot_total_tokens', 'captura_chatbot_api_key', 'captura_chatbot_token_reset_date', 'captura_chatbot_model', 'captura_chatbot_temperature', 'captura_chatbot_max_tokens', 'captura_chatbot_instructions', 'captura_chatbot_enabled', 'captura_chatbot_css_version', 'captura_chatbot_welcome_message', 'captura_chatbot_header_bg_color', 'captura_chatbot_header_text_color', 'captura_chatbot_user_msg_bg_color', 'captura_chatbot_user_msg_text_color', 'captura_chatbot_bot_msg_bg_color', 'captura_chatbot_bot_msg_text_color', 'captura_chatbot_button_bg_color', 'captura_chatbot_button_text_color', 'captura_chatbot_assistant_avatar', 'captura_chatbot_button_icon', 'captura_use_knowledge_base', 'captura_chunk_size', 'captura_show_on_homepage', 'captura_show_on_posts', 'captura_show_on_pages', 'captura_show_on_archives', 'captura_chatbot_css');

