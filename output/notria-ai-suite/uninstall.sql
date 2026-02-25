-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notria_ai_suite_provider', 'notria_ai_suite_api_key', 'notria_ai_suite_model', 'notria_ai_suite_chatbot_welcome_message', 'notria_ai_suite_chatbot_color', 'notria_ai_suite_rag_enabled', 'notria_ai_suite_content_language', 'notria_ai_suite_indexed_posts', 'notria_ai_suite_module_content_generator', 'notria_ai_suite_module_chatbot', 'notria_ai_suite_module_form_enhancer', 'notria_ai_suite_embeddings_model');

