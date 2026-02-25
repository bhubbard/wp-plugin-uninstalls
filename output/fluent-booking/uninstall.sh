#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluent_booking_db_version'
wp option delete '_fluent_booking_settings'
wp option delete 'fluent_booking_payment_settings_stripe'
wp option delete 'fluent_booking_global_payment_settings'
wp option delete 'fluent_booking_modules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fluent_booking_payment_settings_%'"
wp option delete 'fluentmail-settings'
wp option delete '_fluent_booking_enabled_modules'
wp option delete '_fb_ins_by'
wp option delete 'fcom_last_summary_email_send'
wp option delete 'siteUrl'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fluent_booking_five_minutes_tasks'
wp cron event delete 'fluent_booking_hourly_tasks'
wp cron event delete 'fluent_booking/daily_tasks'

