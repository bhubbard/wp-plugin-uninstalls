#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'p5_db_version'
wp option delete 'time_format '

# Clear Cron Jobs
wp cron event delete 'p5cron'

