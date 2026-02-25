#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nav_disable_comments_type'
wp option delete 'nav_enable_role_exclusions'
wp option delete 'nav_show_avatars'
wp option delete 'nav_disable_api_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nav_disable_comments_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nav_exclude_role_%'"
wp option delete 'nav_disable_type'
wp option delete 'nav_disable_comments_global'
wp option delete 'nav_excluded_roles'
wp option delete 'nav_disable_avatar'
wp option delete 'nav_disable_xmlrpc'
wp option delete 'nav_disable_rest_api'
wp option delete 'nav_deleted_comments_count'
wp option delete 'nav_auto_delete_spam'
wp option delete 'nav_last_spam_cleanup'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wp_count_comments'
wp transient delete 'nav_comments_count'
wp transient delete 'nav_remaining_comments'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'nav_auto_delete_spam_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

