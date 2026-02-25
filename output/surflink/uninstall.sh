#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surfl_module_settings'
wp option delete 'surfl_backup_settings'
wp option delete 'surfl_lh_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'surfl_lh_custom_login_slug'
wp option delete 'surfl_lh_version'
wp option delete 'surfl_lh_login_page_id'
wp option delete 'surfl_lh_max_attempts'
wp option delete 'surfl_lh_ban_duration'
wp option delete 'rewrite_rules'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'surfl_lh_cleanup_transient'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'surfl_continue_backup'
wp cron event delete 'fs_debug_turn_off_logging_hook'

