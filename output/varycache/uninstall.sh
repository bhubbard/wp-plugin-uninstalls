#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'varycache_version'
wp option delete 'varycache_write_error'

# Delete Transients
wp transient delete 'varycache_preload_lock'
wp transient delete 'varycache_cache_report'

# Clear Cron Jobs
wp cron event delete 'VaryCache_Preload_cron'

