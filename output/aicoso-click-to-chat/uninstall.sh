#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctc_chat_settings'

# Delete Transients
wp transient delete 'ctc_chat_settings_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctc_chat_hide_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctc_chat_hide_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctc_chat_hide_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctc_chat_hide_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctc_chat_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctc_chat_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctc_chat_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctc_chat_custom_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctc_chat_assigned_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctc_chat_assigned_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctc_chat_assigned_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctc_chat_assigned_number'"
