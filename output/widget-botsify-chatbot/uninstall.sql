-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('botsify_chatbot_api_key', 'botsify_chatbot_url');

