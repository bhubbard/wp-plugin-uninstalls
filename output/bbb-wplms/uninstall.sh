#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplms_bbb_meetings'

# Clear Cron Jobs
wp cron event delete 'wplms_send_wplms_bbb_reminders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
