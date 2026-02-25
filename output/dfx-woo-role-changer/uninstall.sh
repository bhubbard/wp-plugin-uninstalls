#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dfx_woo_role_changer_mode_selection'
wp option delete 'dfx_woo_role_changer_grant_moment'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfxwcrc_role_assignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfxwcrc_role_assignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfxwcrc_role_assignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfxwcrc_role_assignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dfxwcrc_old_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dfxwcrc_old_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dfxwcrc_old_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dfxwcrc_old_roles'"
