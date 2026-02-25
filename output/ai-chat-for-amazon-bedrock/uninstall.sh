#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_chat_bedrock_enable_mcp'
wp option delete 'ai_chat_bedrock_settings'
wp option delete 'ai_chat_bedrock_mcp_servers'

# Delete Transients
wp transient delete 'ai_chat_bedrock_cache'

