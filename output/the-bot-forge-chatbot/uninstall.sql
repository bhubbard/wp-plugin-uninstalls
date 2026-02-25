-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bot_forge_chatbot_id', 'bot_forge_chatbot_pages');

