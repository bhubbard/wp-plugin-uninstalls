#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ilj_dismiss_dash_notice_until'
wp option delete 'fs_accounts'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'updraft_task_manager_dbversion'
wp option delete 'updraft_task_manager_plugins'

# Delete Transients
wp transient delete 'ilj_upload_settings'
wp transient delete 'ilj_upload_keywords'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ilj_upload_%' OR option_name LIKE '_site_transient_ilj_upload_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

