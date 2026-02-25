-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b19cojp_ai_bot_chat_options', 'ai_bot_chat_options');

