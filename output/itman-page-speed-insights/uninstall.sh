#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'itps_status'
wp option delete 'itps_db_version'

# Clear Cron Jobs
wp cron event delete 'itps_fetchPageSpeedData'

