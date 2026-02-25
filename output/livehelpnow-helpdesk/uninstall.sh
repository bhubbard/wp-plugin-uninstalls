#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lhn_authentication_info'
wp option delete 'lhn_session_destroyed'
wp option delete 'lhn_oauth_id'
wp option delete 'lhn_oauth_secret'
wp option delete 'lhn_first_authentication_passed'
wp option delete 'lhn_default_chat'
wp option delete 'lhn_display_chat'
wp option delete 'lhn_remove_plugin_data'

# Clear Cron Jobs
wp cron event delete 'lhn_destroy_user_session_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_widget_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_widget_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_widget_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_widget_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_dictionary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_dictionary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_dictionary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_dictionary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'closedpostboxes_lhn-chat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'closedpostboxes_lhn-chat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'closedpostboxes_lhn-chat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'closedpostboxes_lhn-chat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_hide'"
