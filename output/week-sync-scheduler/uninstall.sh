#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weekgrfo_settings'
wp option delete 'weekgrfo_specific_settings'
wp option delete 'weekgrfo_logs'

# Clear Cron Jobs
wp cron event delete 'weekgrfo_send_report_once'
wp cron event delete 'weekgrfo_send_report_specific_date'

