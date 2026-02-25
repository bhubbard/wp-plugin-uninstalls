#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'muxvideo_options'
wp option delete 'muxvideo_redirect_after_activation'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'muxvideo_playback_restrictions'

# Clear Cron Jobs
wp cron event delete 'muxvideo_process_caption_queue'
wp cron event delete 'muxvideo_delayed_metadata_update'

