#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xsec_settings'
wp option delete 'xsec_activated'
wp option delete 'xsec_db_version'

# Clear Cron Jobs
wp cron event delete 'xsec_daily_scan'
wp cron event delete 'xsec_cleanup'

