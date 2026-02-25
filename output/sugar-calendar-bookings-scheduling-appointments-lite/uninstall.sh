#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sugar_calendar_bookings_initial_version'
wp option delete 'sugar_calendar_bookings_initial_activation_time'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp option delete 'sugar_calendar_bookings_admin_notices'
wp option delete 'sugar_calendar_bookings_connect_token'
wp option delete 'sugar_calendar_bookings_connect'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'scb_just_activated'
wp transient delete 'scbookings_lite_just_activated'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'sugar_calendar_bookings_hourly_reminder_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sugar_calendar_bookings_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sugar_calendar_bookings_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sugar_calendar_bookings_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sugar_calendar_bookings_admin_notices'"
