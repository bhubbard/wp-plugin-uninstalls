#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gemini_chatbot_api_key'
wp option delete 'gemini_chatbot_ai_provider'
wp option delete 'gemini_chatbot_model_name'
wp option delete 'gemini_chatbot_enabled'
wp option delete 'gemini_chatbot_custom_context'
wp option delete 'gemini_chatbot_custom_restrictions'
wp option delete 'gemini_chatbot_bot_name'
wp option delete 'gemini_chatbot_welcome_message'
wp option delete 'gemini_chatbot_suggestion_prompts'
wp option delete 'gemini_chatbot_color_mode'
wp option delete 'gemini_chatbot_color_preset'
wp option delete 'gemini_chatbot_color_primary'
wp option delete 'gemini_chatbot_color_secondary'
wp option delete 'gemini_chatbot_position'
wp option delete 'gemini_chatbot_draggable'
wp option delete 'gemini_chatbot_resizable'
wp option delete 'gemini_chatbot_data_site_info'
wp option delete 'gemini_chatbot_data_posts'
wp option delete 'gemini_chatbot_data_pages'
wp option delete 'gemini_chatbot_data_categories'
wp option delete 'gemini_chatbot_data_tags'
wp option delete 'gemini_chatbot_data_comments'
wp option delete 'gemini_chatbot_data_menus'
wp option delete 'gemini_chatbot_data_products'
wp option delete 'gemini_chatbot_data_social_links'
wp option delete 'gemini_chatbot_selected_pages'
wp option delete 'gemini_chatbot_settings_updated'
wp option delete 'gemini_chatbot_admin_secret'
wp option delete 'gemini_chatbot_is_blocked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'onepage_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"

# Delete Transients
wp transient delete 'gemini_chatbot_blocked_status'

