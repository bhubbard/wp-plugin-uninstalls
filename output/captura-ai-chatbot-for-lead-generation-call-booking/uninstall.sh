#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'captura_chatbot_total_tokens'
wp option delete 'captura_chatbot_api_key'
wp option delete 'captura_chatbot_token_reset_date'
wp option delete 'captura_chatbot_model'
wp option delete 'captura_chatbot_temperature'
wp option delete 'captura_chatbot_max_tokens'
wp option delete 'captura_chatbot_instructions'
wp option delete 'captura_chatbot_enabled'
wp option delete 'captura_chatbot_css_version'
wp option delete 'captura_chatbot_welcome_message'
wp option delete 'captura_chatbot_header_bg_color'
wp option delete 'captura_chatbot_header_text_color'
wp option delete 'captura_chatbot_user_msg_bg_color'
wp option delete 'captura_chatbot_user_msg_text_color'
wp option delete 'captura_chatbot_bot_msg_bg_color'
wp option delete 'captura_chatbot_bot_msg_text_color'
wp option delete 'captura_chatbot_button_bg_color'
wp option delete 'captura_chatbot_button_text_color'
wp option delete 'captura_chatbot_assistant_avatar'
wp option delete 'captura_chatbot_button_icon'
wp option delete 'captura_use_knowledge_base'
wp option delete 'captura_chunk_size'
wp option delete 'captura_show_on_homepage'
wp option delete 'captura_show_on_posts'
wp option delete 'captura_show_on_pages'
wp option delete 'captura_show_on_archives'

# Delete Transients
wp transient delete 'captura_chatbot_css'

# Clear Cron Jobs
wp cron event delete 'captura_chatbot_cleanup'

