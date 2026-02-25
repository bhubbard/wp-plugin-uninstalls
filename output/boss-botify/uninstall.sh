#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boss_botify_bot_type'
wp option delete 'boss_botify_chatbot_id'
wp option delete 'boss_botify_primary_color'
wp option delete 'boss_botify_secondary_color'

