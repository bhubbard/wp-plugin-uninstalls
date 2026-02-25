#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kbm_Reposter_Configuration'

# Clear Cron Jobs
wp cron event delete 'KBM_Reposter_event'

