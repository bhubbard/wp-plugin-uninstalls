#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%s1-heading'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%s1-body'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%s1-alt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%s1-mono'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%font_display'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fstack-heading'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fstack-body'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fstack-alt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fstack-mono'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%stage_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%stage_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activation-date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%uninstall'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

