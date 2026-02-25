#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'muchat_ai_chatbot_agent_id'
wp option delete 'muchat_ai_chatbot_verify'
wp option delete 'muchat_ai_chatbot_context'
wp option delete 'muchat_ai_chatbot_interface_initial_messages'
wp option delete 'muchat_ai_chatbot_enable_guest_messages'
wp option delete 'muchat_ai_chatbot_guest_initial_messages'
wp option delete 'muchat_ai_chatbot_enable_guest_context'
wp option delete 'muchat_ai_chatbot_guest_context'
wp option delete 'muchat_ai_chatbot_load_strategy'
wp option delete 'muchat_ai_chatbot_script_position'
wp option delete 'muchat_ai_chatbot_use_logged_in_user_info'
wp option delete 'muchat_ai_chatbot_widget_enabled'
wp option delete 'muchat_ai_chatbot_schedule_enabled'
wp option delete 'muchat_ai_chatbot_schedule_days'
wp option delete 'muchat_ai_chatbot_schedule_start_time'
wp option delete 'muchat_ai_chatbot_schedule_end_time'
wp option delete 'muchat_ai_chatbot_plugin_options'
wp option delete 'muchat_ai_chatbot_visibility_mode'
wp option delete 'muchat_ai_chatbot_visibility_pages'
wp option delete 'muchat_ai_chatbot_onboarding'

# Delete Transients
wp transient delete 'muchat_connection_status'
wp transient delete 'muchat_product_meta_fields_cache'
wp transient delete 'muchat_ai_chatbot_plugin_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_muchat_previous_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_muchat_previous_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_muchat_previous_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_muchat_previous_data'"
