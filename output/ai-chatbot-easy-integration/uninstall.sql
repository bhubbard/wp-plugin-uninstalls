-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_chatbot_easy_integration_version', 'ai_chatbot_easy_integration_settings');

