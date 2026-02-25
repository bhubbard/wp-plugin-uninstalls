#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unplug_settings'
wp option delete 'unplug_settings[enable_logging]'
wp option delete 'unplug_activity_scan_results'
wp option delete 'unplug_license_status'
wp option delete 'unplug_migration_failed'
wp option delete 'unplug_migration_error'
wp option delete 'unplug_location_scan_results'
wp option delete 'unplug_last_scan_time'
wp option delete 'unplug_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_file'"
wp option delete 'unplug_db_config'
wp option delete 'unplug_api_token_encrypted'
wp option delete 'unplug_encryption_key'
wp option delete 'active_sitewide_plugins'
wp option delete 'unplug_queue_max_size'
wp option delete 'unplug_api_token'
wp option delete 'unplug_jwt_public_key'
wp option delete 'unplug_network_settings'
wp option delete 'unplug_network_api_token'

# Delete Transients
wp transient delete 'unplug_activity_scan_results'
wp transient delete 'unplug_plugin_list'
wp transient delete 'unplug_scan_progress'
wp transient delete 'unplug_api_validation'
wp transient delete 'unplug_user_tier'
wp transient delete 'unplug_queue_status'
wp transient delete 'unplug_plugin_inventory'
wp transient delete 'unplug_dashboard_refresh'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_unplug_confirmation_%' OR option_name LIKE '_site_transient_unplug_confirmation_%'"

# Clear Cron Jobs
wp cron event delete 'unplug_activity_scan'
wp cron event delete 'unplug_cleanup_old_scans'
wp cron event delete 'unplug_process_queue'
wp cron event delete 'unplug_validate_api_token'
wp cron event delete 'unplug_update_plugin_inventory'
wp cron event delete 'unplug_background_scan'
wp cron event delete 'unplug_cleanup_scan_results'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
