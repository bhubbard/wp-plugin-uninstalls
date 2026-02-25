#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'connections_aabe_queue'

# Clear Cron Jobs
wp cron event delete 'cn-aabe-hourly-event'
wp cron event delete 'cn-aabe-daily-event'

