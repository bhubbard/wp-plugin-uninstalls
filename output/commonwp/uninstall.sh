#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'commonwp_data'

# Clear Cron Jobs
wp cron event delete 'for_recently_upgraded_core'

