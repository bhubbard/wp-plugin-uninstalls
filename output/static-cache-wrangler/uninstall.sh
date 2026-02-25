#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stcw_pending_assets'
wp option delete 'stcw_downloaded_assets'
wp option delete 'stcw_enabled'

# Clear Cron Jobs
wp cron event delete 'stcw_process_assets'

