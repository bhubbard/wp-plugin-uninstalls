#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mld_settings'
wp option delete 'mld_download_logs'

# Clear Cron Jobs
wp cron event delete 'mld_cleanup_temp_files'

