#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpes_evernote_common_token'
wp option delete 'wpes_evernote_udpated_status'
wp option delete 'wpes_evernote_update_suspend'
wp option delete 'wpes_evernote_update_action_interval'
wp option delete 'wpes_evernote_notebook_on'
wp option delete 'wpes_evernote_notebook_key'
wp option delete 'wpes_evernote_exclude_tags'
wp option delete 'wpes_update_time'
wp option delete 'wpes_common_and_user_tokens'

# Clear Cron Jobs
wp cron event delete 'wpes_evernote_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpes_user_evernote_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpes_user_evernote_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpes_user_evernote_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpes_user_evernote_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpes_evernote_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpes_evernote_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpes_evernote_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpes_evernote_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpes_evernote_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpes_evernote_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpes_evernote_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpes_evernote_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpes_evernote_uploaded_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpes_evernote_uploaded_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpes_evernote_uploaded_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpes_evernote_uploaded_images'"
