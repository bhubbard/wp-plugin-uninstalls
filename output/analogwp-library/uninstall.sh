#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'analog_custom_library_queue_flush_rewrite_rules'
wp option delete 'elementor_experiment-container'
wp option delete 'analog_custom_library_options'
wp option delete '_analog_custom_library_import_history'
wp option delete 'analog_custom_library_previous_db_version'
wp option delete 'analog_custom_library_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'agwp_custom_library_outdated_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_analog_custom_library_rollback_versions_%' OR option_name LIKE '_site_transient_analog_custom_library_rollback_versions_%'"
wp transient delete 'analog_custom_library_license_message'
wp transient delete 'analog_custom_library_info'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'analog_custom_library_sync_to_library'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'analog_custom_library_sync_to_library'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'analog_custom_library_sync_to_library'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'analog_custom_library_sync_to_library'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'required_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'required_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'required_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'required_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_pro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uses_container'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uses_container'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uses_container'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uses_container'"
