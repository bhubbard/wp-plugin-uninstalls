#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'delop_filters'
wp option delete 'deloldp-post-days-option'
wp option delete 'deletedpostredirectsopt'
wp option delete 'deletedpostredirectsoptedited'
wp option delete 'post_delete_log_array'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'deloldp_cron_delete_old_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirects_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirects_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirects_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirects_per_page'"
