#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aafw_google_api_key'
wp option delete 'aafw_shipping_autocomplete'
wp option delete 'aafw_billing_autocomplete'
wp option delete 'aafw_initial_map'
wp option delete 'aafw_address_format'
wp option delete 'aafw_debug_logs'
wp option delete 'aafw_pickup_autocomplete'
wp option delete 'aafw_activation_date'
wp option delete 'aafw_review_action'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'aafw_center_map_latitude'
wp option delete 'aafw_center_map_longitude'
wp option delete 'aafw_map_zoom'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

