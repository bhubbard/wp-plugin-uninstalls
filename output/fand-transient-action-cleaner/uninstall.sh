#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fand_tac_delay_failed'
wp option delete 'fand_tac_delay_completed'

# Clear Cron Jobs
wp cron event delete 'fand_tac_weekly_cleanup'

