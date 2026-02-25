#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppa_timezone'
wp option delete 'wppa_slot_interval_minutes'
wp option delete 'wppa_google_client_id'
wp option delete 'wppa_google_client_secret'
wp option delete 'wppa_google_calendar_id'
wp option delete 'wppa_psychologist_name'
wp option delete 'wppa_reminders_enabled'
wp option delete 'wppa_reminder_minutes'
wp option delete 'wppa_reminder_method'
wp option delete 'wppa_email_notifications_enabled'
wp option delete 'wppa_admin_email'
wp option delete 'wppa_rate_limit_view_slots'
wp option delete 'wppa_rate_limit_book'
wp option delete 'wppa_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppa_overrides_snapshot_%'"
wp option delete 'wppa_lead_time_hours'
wp option delete 'wppa_close_adjacent_slots_after'
wp option delete 'wppa_close_adjacent_slots_before'
wp option delete 'wppa_close_adjacent_google_events'
wp option delete 'wppa_timezone_auto'
wp option delete 'wppa_google_enabled'
wp option delete 'wppa_google_two_way_sync'
wp option delete 'wppa_last_sync_time'
wp option delete 'wppa_encryption_key'
wp option delete 'wppa_google_sync_token'
wp option delete 'wppa_google_token_expires'
wp option delete 'wppa_google_refresh_token'
wp option delete 'wppa_google_access_token'

# Clear Cron Jobs
wp cron event delete 'wppa_sync_google_calendar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppa_admin_tf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppa_admin_tf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppa_admin_tf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppa_admin_tf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppa_google_oauth_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppa_google_oauth_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppa_google_oauth_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppa_google_oauth_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppa_dismissed_encryption_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppa_dismissed_encryption_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppa_dismissed_encryption_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppa_dismissed_encryption_notice'"
