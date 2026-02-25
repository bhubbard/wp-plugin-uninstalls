-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boopixel_ai_chat_for_n8n_chat_icon', 'boopixel_ai_chat_for_n8n_chat_name', 'boopixel_ai_chat_for_n8n_welcome_message', 'boopixel_ai_chat_for_n8n_primary_color', 'boopixel_ai_chat_for_n8n_secondary_color', 'boopixel_ai_chat_for_n8n_chat_bg_color', 'boopixel_ai_chat_for_n8n_text_color', 'boopixel_ai_chat_for_n8n_font_family', 'boopixel_ai_chat_for_n8n_font_size', 'boopixel_ai_chat_for_n8n_api_url', 'boopixel_ai_chat_for_n8n_language', 'boopixel_ai_chat_for_n8n_cache_version');

