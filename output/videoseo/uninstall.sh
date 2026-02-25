#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'videoseowtf'
wp option delete 'videoseo_last_generate_time'
wp option delete 'videoseo_last_ping_time'

# Clear Cron Jobs
wp cron event delete 'my_hourly_event'

