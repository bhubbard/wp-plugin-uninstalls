#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'makcubes_nrp_settings'

# Clear Cron Jobs
wp cron event delete 'makcubes_nrp_weekly_cleanup'

