#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_reviews_option_name'
wp option delete 'gr_latest_results'
wp option delete 'grwp_place_info'
wp option delete 'gr_latest_results_free'
wp option delete 'google_reviews_style'
wp option delete 'google_reviews_slider_settings'
wp option delete 'grwp_activation_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'get_google_reviews'
wp cron event delete 'fs_debug_turn_off_logging_hook'

