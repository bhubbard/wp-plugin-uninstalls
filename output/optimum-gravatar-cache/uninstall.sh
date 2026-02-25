#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'OGC_resolved'
wp option delete 'OGC_options'
wp option delete 'OGC_avatarUsedSizes'
wp option delete 'OGC_apacheConfig'

# Clear Cron Jobs
wp cron event delete 'OGC_CronEvent'

