#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayg_version'
wp option delete 'ayg_gallery_settings'
wp option delete 'ayg_strings_settings'
wp option delete 'ayg_player_settings'
wp option delete 'ayg_livestream_settings'
wp option delete 'ayg_privacy_settings'
wp option delete 'ayg_general_settings'
wp option delete 'ayg_transient_keys'
wp option delete 'ayg_seo_settings'
wp option delete 'ayg_gallery_page_ids'
wp option delete 'ayg_channel_ids'
wp option delete 'ayg_playlist_ids'
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
wp cron event delete 'ayg_schedule_weekly'
wp cron event delete 'fs_debug_turn_off_logging_hook'

