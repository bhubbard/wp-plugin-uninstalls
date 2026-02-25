-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('JSONAPI-Host', 'JSONAPI-Port', 'JSONAPI-User', 'JSONAPI-Pass', 'JSONAPI-Salt', 'mcp_widget_host', 'mcp_widget_title', 'mcp_widget_status', 'mcp_chat_widget_title', 'mcp_widget_hostname', 'mcp_widget_avatar_size', 'mcp_widget_motd', 'mcp_widget_name', 'mcp_widget_version', 'mcp_widget_port', 'mcp_widget_plugins', 'mcp_widget_plugininfo', 'mcp_widget_player', 'mcp_widget_avatars', 'mcp_chat-amount', 'mcp_chat-capability', 'mcp_stream-amount', 'mcp_widget_image_size', 'mcp_widget_ticks', 'mcp_widget_plugintooltips', 'mcp_widget_avatartooltips');

