#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_php_error_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_js_error_log'"

# Clear Cron Jobs
wp cron event delete 'logtastic_scheduled_task_process_php_error_log_retention_schedule'
wp cron event delete 'logtastic_scheduled_task_process_js_error_log_retention_schedule'

