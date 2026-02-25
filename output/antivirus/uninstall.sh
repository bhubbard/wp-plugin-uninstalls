#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'antivirus'

# Delete Transients
wp transient delete 'antivirus-activation-notice'

# Clear Cron Jobs
wp cron event delete 'antivirus_daily_cronjob'

