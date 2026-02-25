#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photoberry_studio_had_default_session_types'
wp option delete 'photoberry_studio_welcomed'
wp option delete 'photoberry_studio_version'

# Clear Cron Jobs
wp cron event delete 'photoberry_scheduled_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photoberry_linked_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photoberry_linked_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photoberry_linked_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photoberry_linked_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photoberry_notification_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photoberry_notification_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photoberry_notification_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photoberry_notification_params'"
