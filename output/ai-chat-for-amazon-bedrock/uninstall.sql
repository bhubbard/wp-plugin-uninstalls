-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_chat_bedrock_enable_mcp', 'ai_chat_bedrock_settings', 'ai_chat_bedrock_mcp_servers', 'ai_chat_bedrock_cache');

