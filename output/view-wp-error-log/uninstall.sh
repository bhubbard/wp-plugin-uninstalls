#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'view_wp_error_log_no_lines'
wp option delete 'view_wp_error_log_log'

# Clear Cron Jobs
wp cron event delete 'view_wp_error_log_daily_event'

