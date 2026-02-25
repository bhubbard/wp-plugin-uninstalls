-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmcas_chatbot_openai_api_key', 'tmcas_chatbot_assistant_id', 'tmcas_chatbot_thread_persistence', 'tmcas_chatbot_threads', 'tmcas_chatbot_display_ids', 'tmcas_chatbot_assistant_name', 'tmcas_chatbot_background_color', 'tmcas_chatbot_text_color', 'tmcas_chatbot_title', 'tmcas_chatbot_placeholder', 'tmcas_chatbot_default_question', 'tmcas_chatbot_avatar');

