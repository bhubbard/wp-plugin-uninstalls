#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swyi_options'
wp option delete 'swyi_options_wall'
wp option delete 'swyi_options_showcase'
wp option delete 'swyi_options_feature'
wp option delete 'swyi_options_player'
wp option delete 'swyi_options_status'
wp option delete 'swyi_translations'
wp option delete 'swyi_debug_log'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'swyi_notice_closed5'
wp transient delete 'swyi_video_cache'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'swyi_cron'
wp cron event delete 'fs_debug_turn_off_logging_hook'

