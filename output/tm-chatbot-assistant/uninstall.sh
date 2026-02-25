#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmcas_chatbot_openai_api_key'
wp option delete 'tmcas_chatbot_assistant_id'
wp option delete 'tmcas_chatbot_thread_persistence'
wp option delete 'tmcas_chatbot_threads'
wp option delete 'tmcas_chatbot_display_ids'
wp option delete 'tmcas_chatbot_assistant_name'
wp option delete 'tmcas_chatbot_background_color'
wp option delete 'tmcas_chatbot_text_color'
wp option delete 'tmcas_chatbot_title'
wp option delete 'tmcas_chatbot_placeholder'
wp option delete 'tmcas_chatbot_default_question'
wp option delete 'tmcas_chatbot_avatar'

