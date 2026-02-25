#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'QRLA_time'
wp option delete 'QRLA_time_limit'
wp option delete 'QRLA_code'
wp option delete 'QRLA_random_string'

# Clear Cron Jobs
wp cron event delete 'QRLA_schedule_event'

