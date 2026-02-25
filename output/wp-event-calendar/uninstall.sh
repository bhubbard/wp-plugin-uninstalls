#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wp_event_calendar_cron_hook'
wp cron event delete 'wp_event_calendar_update_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_event_calendar_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_event_calendar_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_event_calendar_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_event_calendar_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_event_calendar_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_event_calendar_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_event_calendar_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_event_calendar_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_event_calendar_end_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_event_calendar_end_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_event_calendar_end_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_event_calendar_end_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_event_calendar_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_event_calendar_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_event_calendar_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_event_calendar_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_event_calendar_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_event_calendar_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_event_calendar_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_event_calendar_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_event_calendar_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_event_calendar_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_event_calendar_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_event_calendar_expire'"
