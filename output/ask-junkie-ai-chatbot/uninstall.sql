-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gemini_chatbot_api_key', 'gemini_chatbot_ai_provider', 'gemini_chatbot_model_name', 'gemini_chatbot_enabled', 'gemini_chatbot_custom_context', 'gemini_chatbot_custom_restrictions', 'gemini_chatbot_bot_name', 'gemini_chatbot_welcome_message', 'gemini_chatbot_suggestion_prompts', 'gemini_chatbot_color_mode', 'gemini_chatbot_color_preset', 'gemini_chatbot_color_primary', 'gemini_chatbot_color_secondary', 'gemini_chatbot_position', 'gemini_chatbot_draggable', 'gemini_chatbot_resizable', 'gemini_chatbot_data_site_info', 'gemini_chatbot_data_posts', 'gemini_chatbot_data_pages', 'gemini_chatbot_data_categories', 'gemini_chatbot_data_tags', 'gemini_chatbot_data_comments', 'gemini_chatbot_data_menus', 'gemini_chatbot_data_products', 'gemini_chatbot_data_social_links', 'gemini_chatbot_selected_pages', 'gemini_chatbot_settings_updated', 'gemini_chatbot_admin_secret', 'gemini_chatbot_is_blocked', 'gemini_chatbot_blocked_status');
DELETE FROM wp_options WHERE option_name LIKE 'onepage_%';
DELETE FROM wp_options WHERE option_name LIKE '%_url';

