#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speed_matrix_settings'
wp option delete 'speed_matrix_last_cleanup'
wp option delete 'speed_matrix_activated'
wp option delete 'speed_matrix_version'

# Delete Transients
wp transient delete 'speed_matrix_activation_notice'
wp transient delete 'speed_matrix_cleanup_running'
wp transient delete 'speed_matrix_cache_stats'
wp transient delete 'speed_matrix_transients_count'

# Clear Cron Jobs
wp cron event delete 'speed_matrix_auto_cleanup_event'

