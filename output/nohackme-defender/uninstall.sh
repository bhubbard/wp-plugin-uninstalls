#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdxglobal_options'
wp option delete 'nohackme_defender_options'
wp option delete 'nohackme_defender_license'

# Clear Cron Jobs
wp cron event delete 'nohackme_defender_daily_event'

