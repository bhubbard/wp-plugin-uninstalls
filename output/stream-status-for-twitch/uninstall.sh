#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swsb_options'
wp option delete 'swsb_debug_log'
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
wp transient delete 'swsb_twitch_token'
wp transient delete 'swsb_twitch_token_expires'
wp transient delete 'swsb_twitch_auth_token'
wp transient delete 'swsb_twitch_auth_token_expires'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

