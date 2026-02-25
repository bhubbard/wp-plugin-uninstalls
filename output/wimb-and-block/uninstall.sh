#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wimbblock_always'
wp option delete 'wimbblock_deleting'
wp option delete 'wimbblock_emergency'
wp option delete 'wimbblock_exclude'
wp option delete 'wimbblock_anon'
wp option delete 'wimbblock_anon_'
wp option delete 'wimbblock_logfile'
wp option delete 'wimbblock_log'
wp option delete 'wimbblock_settings'
wp option delete 'wimbblock_systems'
wp option delete 'wimbblock_browsers'
wp option delete 'wimbblock_db_version'

# Delete Transients
wp transient delete 'wimbblock_logfile'

# Clear Cron Jobs
wp cron event delete 'wimbblock_rotate_hook'

