#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iads_options'
wp option delete 'iads_db_version'
wp option delete 'iads_blacklisted_ips'

# Clear Cron Jobs
wp cron event delete 'iads_daily_cleanup'

