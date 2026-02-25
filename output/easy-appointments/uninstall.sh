#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_app_db_version'
wp option delete 'ea_excel_columns'
wp option delete 'ea_hide_newsletter'

# Clear Cron Jobs
wp cron event delete 'easyapp_hourly_event'
wp cron event delete 'ea_daily_expire_appointments'
wp cron event delete 'ea_gdpr_auto_delete'

