#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allegro_sync_db_version'
wp option delete 'e_strix_allegro_symc_db_version'

# Clear Cron Jobs
wp cron event delete 'e_strix_allegro_symc_cronjob'

