-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyaich_ai_chatbot_client', 'easyaich_ai_chatbot_bot', 'easyaich_ai_chatbot_token');

