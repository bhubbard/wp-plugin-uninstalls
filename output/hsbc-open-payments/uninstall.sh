#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'hsbc_success_msg'
wp transient delete 'hsbc_error_msg'

# Clear Cron Jobs
wp cron event delete 'hsbc_daily_event'
wp cron event delete 'hsbc_hourly_event'

