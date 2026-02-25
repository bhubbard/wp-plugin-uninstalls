#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'menia_token'
wp option delete 'menia_web_chat_enabled'
wp option delete 'menia_web_chat_embed_code'
wp option delete 'menia_settings'
wp option delete 'menia_widget'
wp option delete 'menia_web_chat'

