#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agentivo_chatbots_bubble_chat_id'
wp option delete 'agentivo_chatbots_inline_chat_id'
wp option delete 'agentivo_chatbots_inline_width'
wp option delete 'agentivo_chatbots_inline_height'

