#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpar_plugin_settings'
wp option delete 'wpar_last_global_cron_run'
wp option delete 'wpar_plugin_dismiss_rating_notice'
wp option delete 'wpar_plugin_no_thanks_rating_notice'
wp option delete 'wpar_plugin_installed_time'
wp option delete 'revivepress_hide_permalink_notice'
wp option delete 'wpar_next_scheduled_timestamp'
wp option delete 'wpar_plugin_dismissed_time'
wp option delete 'wpar_republish_log_history'
wp option delete 'wpar_dashboard_widget_options'
wp option delete 'wpar_global_republish_post_ids'
wp option delete 'wpar_social_credentials'
wp option delete 'wpar_next_eligible_date'
wp option delete 'revivepress_version'
wp option delete 'revivepress_install_date'
wp option delete 'revivepress_db_version'
wp option delete 'wpar_next_scheduled'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wpar_in_progress'
wp transient delete 'rvp_import_db_done'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'wpar/schedular_health_check'
wp cron event delete 'fs_debug_turn_off_logging_hook'

