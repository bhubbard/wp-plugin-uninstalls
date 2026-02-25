#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swti_options_player'
wp option delete 'swti_options_rail'
wp option delete 'swti_options_status'
wp option delete 'swti_options_vods'
wp option delete 'swti_options_wall'
wp option delete 'swti_options'
wp option delete 'swti_translations'
wp option delete 'swti_debug_log'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'swti_options_feature'
wp option delete 'swti_options_nav'

# Delete Transients
wp transient delete 'swti_twitch_token_expires'
wp transient delete 'swti_notice_closed5'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swti_game_%' OR option_name LIKE '_site_transient_swti_game_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swti_team_%' OR option_name LIKE '_site_transient_swti_team_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swti_channel_%' OR option_name LIKE '_site_transient_swti_channel_%'"
wp transient delete 'swti_twitch_token'
wp transient delete 'swti_twitch_auth_token'
wp transient delete 'swti_twitch_auth_token_expires'

# Clear Cron Jobs
wp cron event delete 'swti_cron'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_channel_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_channel_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_channel_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_channel_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_team_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_team_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_team_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_team_status'"
