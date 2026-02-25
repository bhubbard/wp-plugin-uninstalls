#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptw_count'

# Clear Cron Jobs
wp cron event delete 'ptw_cron'

