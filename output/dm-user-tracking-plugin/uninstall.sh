#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lbakut_options'

# Clear Cron Jobs
wp cron event delete 'lbakut_database_management_cron'
wp cron event delete 'lbakut_update_browscap'
wp cron event delete 'lbakut_do_cache_and_stats'

