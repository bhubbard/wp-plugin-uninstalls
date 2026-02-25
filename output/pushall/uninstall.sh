#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushall_chanel_id'
wp option delete 'pushall_chanel_key'
wp option delete 'pushall_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pushall_should_send_push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pushall_should_send_push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pushall_should_send_push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pushall_should_send_push'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pushall_custom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pushall_custom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pushall_custom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pushall_custom_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pushall_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pushall_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pushall_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pushall_custom_message'"
