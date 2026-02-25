#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'perform_settings'
wp option delete 'perform_network'
wp option delete 'perform_assets_manager_options'
wp option delete 'perform_assets_manager_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_perform_menu_cache_%' OR option_name LIKE '_site_transient_perform_menu_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_perform_menu_cache_menuid_%' OR option_name LIKE '_site_transient_perform_menu_cache_menuid_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

