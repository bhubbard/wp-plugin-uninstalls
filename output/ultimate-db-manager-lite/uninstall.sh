#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultimate-db-skip-premium'
wp option delete 'ultimate_db_manager_global_settings'
wp option delete 'ultimate_db_global_settings'

# Clear Cron Jobs
wp cron event delete 'ultimate_db_cron_hook'

