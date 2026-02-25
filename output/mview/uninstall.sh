#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mview_settings'

# Clear Cron Jobs
wp cron event delete 'mview_hourly_event'

