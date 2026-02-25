#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agent700_agent_id'
wp option delete 'agent700_hide_overlay'
wp option delete 'agent700_layout_type'
wp option delete 'agent700_primary_color'
wp option delete 'agent700_message_title_color'
wp option delete 'agent700_bot_name'
wp option delete 'agent700_use_shortcode'
wp option delete 'agent700_chat_icon'
wp option delete 'agent700_chat_title'
wp option delete 'agent700_chat_avatar'
wp option delete 'agent700_chat_shortcode'

