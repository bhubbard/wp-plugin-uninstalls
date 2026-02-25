#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ds_chatbot_delete_on_uninstall'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%%'"
wp option delete 'ds_chatbot_api_key'
wp option delete 'ds_chatbot_endpoint'
wp option delete 'ds_chatbot_system_role'
wp option delete 'ds_chatbot_model'
wp option delete 'ds_chatbot_title'
wp option delete 'ds_chatbot_user_color'
wp option delete 'ds_chatbot_bot_color'
wp option delete 'ds_chatbot_user_text_color'
wp option delete 'ds_chatbot_bot_text_color'
wp option delete 'ds_chatbot_input_placeholder'
wp option delete 'ds_chatbot_opening_prompt'
wp option delete 'ds_chatbot_style_version'

# Clear Cron Jobs
wp cron event delete 'ds_chatbot_cron_hook'

