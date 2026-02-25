#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'actlogpro_track_plugin_events'
wp option delete 'kc_lf_email_digest_last_sent'
wp option delete 'kc_lf_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kc_lf_theme_data_%' OR option_name LIKE '_site_transient_kc_lf_theme_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kc_lf_user_logout_%' OR option_name LIKE '_site_transient_kc_lf_user_logout_%'"
wp transient delete 'kc_plugins_info'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

