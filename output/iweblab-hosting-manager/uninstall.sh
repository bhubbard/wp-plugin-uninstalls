#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'IHM-Settings'
wp option delete 'IHM-SpidersList'

# Clear Cron Jobs
wp cron event delete 'IHM_UpdateSpiderList'

