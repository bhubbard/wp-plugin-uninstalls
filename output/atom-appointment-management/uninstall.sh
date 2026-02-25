#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atom_aam_settings'
wp option delete 'atom_aam_settings_rulebased'
wp option delete 'atom_aam_settings_individual'
wp option delete 'atom_aam_settings_email'
wp option delete 'atom_aam_version'

# Delete Transients
wp transient delete 'aam_admin_notification_badge'
wp transient delete 'atom_appointment_transient_minmaxtime'

# Clear Cron Jobs
wp cron event delete 'aam_async_appointment_confirmed_tasks'
wp cron event delete 'aam_async_appointment_cancelled_tasks'
wp cron event delete 'aam_daily_cronjob'
wp cron event delete 'aam_async_after_booking_tasks'

