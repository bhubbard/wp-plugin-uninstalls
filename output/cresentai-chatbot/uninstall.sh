#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cresentai_api_key'
wp option delete 'cresentai_default_mode'
wp option delete 'cresentai_widget_title'
wp option delete 'cresentai_title_text_color'
wp option delete 'cresentai_title_background_color'
wp option delete 'cresentai_initial_prompt'
wp option delete 'cresentai_chat_background_color'
wp option delete 'cresentai_chat_message_background_color'
wp option delete 'cresentai_chat_message_text_color'
wp option delete 'cresentai_enforce_mandatory_userdetails_collection'
wp option delete 'cresentai_userdetails_text_color'
wp option delete 'cresentai_userdetails_label_color'

