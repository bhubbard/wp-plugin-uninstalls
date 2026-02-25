#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boomerang_base'
wp option delete 'boomerang_board_base'
wp option delete 'boomerang_global_options'
wp option delete 'csf_demo_mode'
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
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boomerang_board_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boomerang_board_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boomerang_board_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boomerang_board_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boomerang_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boomerang_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boomerang_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boomerang_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boomerang_user_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boomerang_user_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boomerang_user_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boomerang_user_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'system_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'system_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'system_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'system_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boomerang_vote_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boomerang_vote_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boomerang_vote_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boomerang_vote_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boomerang_unique_voters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boomerang_unique_voters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boomerang_unique_voters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boomerang_unique_voters'"
