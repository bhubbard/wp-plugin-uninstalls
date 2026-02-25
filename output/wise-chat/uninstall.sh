#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wise_chat_wp_users_cache'
wp transient delete 'wc_admin_settings_message'
wp transient delete 'wc_admin_settings_error_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_ai_role_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_ai_role_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_ai_role_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_ai_role_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_ai_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_ai_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_ai_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_ai_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_ai_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_ai_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_ai_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_ai_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_ai_assistant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_ai_assistant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_ai_assistant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_ai_assistant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wise_chat_message_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wise_chat_message_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wise_chat_message_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wise_chat_message_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wise_chat_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wise_chat_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wise_chat_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wise_chat_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wise_chat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wise_chat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wise_chat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wise_chat'"
