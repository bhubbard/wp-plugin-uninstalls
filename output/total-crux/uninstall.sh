#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tcrux_db_version'

# Clear Cron Jobs
wp cron event delete 'tcrux_cron_cleanup_old_data'
wp cron event delete 'tcrux_cron_cache_urls'

