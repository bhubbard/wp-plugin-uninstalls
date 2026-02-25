#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_tracking_record'
wp option delete 'quickai_chatgpt_api_key'
wp option delete 'quickai_chatgpt_ai_name'
wp option delete 'quickai_chatgpt_ai_role'
wp option delete 'quickai_chatgpt_user_name'
wp option delete 'quickai_chatgpt_placeholder'
wp option delete 'quickai_chatgpt_send_text'

