#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pulse_chat_ai_options'

# Delete Transients
wp transient delete 'pulse_chat_ai_license_check'
wp transient delete 'pulse_chat_ai_license_last_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conversation_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conversation_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conversation_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conversation_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conversation_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conversation_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conversation_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conversation_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conversation_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conversation_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conversation_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conversation_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conversation_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conversation_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conversation_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conversation_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conversation_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conversation_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conversation_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conversation_end_time'"
