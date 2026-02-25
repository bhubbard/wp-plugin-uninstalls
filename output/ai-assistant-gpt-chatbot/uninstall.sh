#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_assistant_api_key'
wp option delete 'ai_assistant_model'
wp option delete 'ai_assistant_system'
wp option delete 'ai_assistant_welcome_message'
wp option delete 'ai_assistant_header_bg'
wp option delete 'ai_assistant_icon_bg'

