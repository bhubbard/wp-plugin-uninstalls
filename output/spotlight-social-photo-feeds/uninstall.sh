#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sli_plugin_conflicts'
wp option delete 'sli_guzzle_conflicts'
wp option delete 'sidebars_widgets'
wp option delete 'widget_sli-feed'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'sli_deactivated_plugin'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

