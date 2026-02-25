#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tableberg_individual_control'
wp option delete 'tableberg_block_properties'
wp option delete 'tableberg_global_control'
wp option delete 'tableberg_version'
wp option delete 'tableberg_installDate'
wp option delete 'tableberg_review_notify'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete '_welcome_redirect_tableberg'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

