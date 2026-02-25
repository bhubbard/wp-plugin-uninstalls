#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'weatherflow_api_key'
wp option delete 'weatherflow_latitude'
wp option delete 'weatherflow_longitude'
wp option delete 'weatherflow_location_name'
wp option delete 'weatherflow_hour_limit'
wp option delete 'weatherflow_background_colour'
wp option delete 'weatherflow_background_text_colour'
wp option delete 'weatherflow_card_colour'
wp option delete 'weatherflow_card_text_colour'
wp option delete 'weatherflow_display_options'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

