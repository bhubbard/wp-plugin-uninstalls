#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushnews_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendNotification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendNotification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendNotification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendNotification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendEmail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendEmail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendEmail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendEmail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allowDuplicatePush'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allowDuplicatePush'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allowDuplicatePush'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allowDuplicatePush'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dontReplacePreviousPush'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dontReplacePreviousPush'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dontReplacePreviousPush'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dontReplacePreviousPush'"
