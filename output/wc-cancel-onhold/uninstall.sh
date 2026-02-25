#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crwcoh_enable'
wp option delete 'crwcoh_days_delay'

# Clear Cron Jobs
wp cron event delete 'crwcoh_cron_event'

