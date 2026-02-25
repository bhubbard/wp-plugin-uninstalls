#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sknh_settings'
wp option delete 'sknh_version'
wp option delete 'sknh_activation_time'
wp option delete 'sknh_last_settings_update'

# Delete Transients
wp transient delete 'sknh_update_data'
wp transient delete 'sknh_notice_cache'
wp transient delete 'sknh_auto_update_status'

# Clear Cron Jobs
wp cron event delete 'sknh_daily_cleanup'
wp cron event delete 'sknh_weekly_report'

