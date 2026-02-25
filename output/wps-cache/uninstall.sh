#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsc_settings'
wp option delete 'wpscac_settings'
wp option delete 'wpsc_debug_mode'
wp option delete 'wpsc_settings_backups'

# Delete Transients
wp transient delete 'wpsc_last_cache_clear'
wp transient delete 'wpsc_html_cache_hits'
wp transient delete 'wpsc_html_cache_misses'
wp transient delete 'wpsc_previous_redis_stats'
wp transient delete 'wpsc_preload_progress'

# Clear Cron Jobs
wp cron event delete 'wpsc_collect_metrics'
wp cron event delete 'wpsc_cache_maintenance'

