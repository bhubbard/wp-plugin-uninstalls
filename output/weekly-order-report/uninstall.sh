#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weekorre_settings'
wp option delete 'weekorre_specific_date_settings'

# Clear Cron Jobs
wp cron event delete 'weekorre_send_report_once'
wp cron event delete 'weekorre_send_report_specific_date'

