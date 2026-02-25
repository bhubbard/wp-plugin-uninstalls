#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adbreach_code'

# Clear Cron Jobs
wp cron event delete 'adbreach_cronjob'

