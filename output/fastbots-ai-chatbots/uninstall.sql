-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fastbots_chatbot_embed_code', 'fastbots_chatbot_embed_code_two');

