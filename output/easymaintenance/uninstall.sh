#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maintainchoicePluginMood'
wp option delete 'maintainchoicePlugin_messageType'
wp option delete 'maintainchoicePlugin_message_page'
wp option delete 'maintainchoicePlugin_TextToDisplay'

