#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spcr_db_version'
wp option delete 'spcr_settings'

# Clear Cron Jobs
wp cron event delete 'spcr_cleanup_old_data'

