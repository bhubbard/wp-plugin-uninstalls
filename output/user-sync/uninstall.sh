#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_server_option'
wp option delete 'mo_user_sync_information_message'
wp option delete 'mo_user_sync_information_message_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mo_user_sync%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mo_user_sync%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mo_user_sync%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mo_user_sync%'"
