#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reventorcab_timeslot_duration'
wp option delete 'reventorcab_booking_days_ahead'
wp option delete 'reventorcab_theme_color'
wp option delete 'reventorcab_timezone'
wp option delete 'reventorcab_time_format'
wp option delete 'reventorcab_date_format'
wp option delete 'reventorcab_appointment_types'
wp option delete 'reventorcab_caldav_url'
wp option delete 'reventorcab_caldav_username'
wp option delete 'reventorcab_caldav_password'
wp option delete 'reventorcab_min_booking_advance'
wp option delete 'reventorcab_working_hours_start'
wp option delete 'reventorcab_working_hours_end'
wp option delete 'reventorcab_break_start'
wp option delete 'reventorcab_break_end'
wp option delete 'reventorcab_working_days'
wp option delete 'reventorcab_timeslot_granularity'
wp option delete 'reventorcab_email_sender_name'
wp option delete 'reventorcab_email_sender_email'
wp option delete 'reventorcab_show_credits'
wp option delete 'reventorcab_appointment_reminder'
wp option delete 'reventorcab_plugin_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'reventorcab_%'"

