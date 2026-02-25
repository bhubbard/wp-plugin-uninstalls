-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agentivo_chatbots_bubble_chat_id', 'agentivo_chatbots_inline_chat_id', 'agentivo_chatbots_inline_width', 'agentivo_chatbots_inline_height');

