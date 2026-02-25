#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpt_db_version'
wp option delete 'mass_ping_log'
wp option delete 'mpt-last-update'
wp option delete 'mpt-update-require'
wp option delete 'mpt-ping-services'
wp option delete 'mass-ping-tool-for-seo'
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
wp cron event delete 'mass_ping'
wp cron event delete 'mpt_auto_update_services'
wp cron event delete 'mpt_sync'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pingme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_encloseme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackbackme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackbackme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackbackme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackbackme'"
