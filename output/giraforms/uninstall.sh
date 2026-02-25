#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giraforms_settings'
wp option delete 'giraforms_version'
wp option delete 'giraforms_db_version'
wp option delete 'giraforms_webhooks'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'giraforms_stats'
wp transient delete 'giraforms_update_check'
wp transient delete 'giraforms_brevo_lists'
wp transient delete 'giraforms_brevo_detected_ip'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_giraforms_success_%' OR option_name LIKE '_site_transient_giraforms_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_giraforms_error_%' OR option_name LIKE '_site_transient_giraforms_error_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

