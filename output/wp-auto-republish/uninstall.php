<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpar_plugin_settings');
delete_site_option('wpar_plugin_settings');
delete_option('wpar_last_global_cron_run');
delete_site_option('wpar_last_global_cron_run');
delete_option('wpar_plugin_dismiss_rating_notice');
delete_site_option('wpar_plugin_dismiss_rating_notice');
delete_option('wpar_plugin_no_thanks_rating_notice');
delete_site_option('wpar_plugin_no_thanks_rating_notice');
delete_option('wpar_plugin_installed_time');
delete_site_option('wpar_plugin_installed_time');
delete_option('revivepress_hide_permalink_notice');
delete_site_option('revivepress_hide_permalink_notice');
delete_option('wpar_next_scheduled_timestamp');
delete_site_option('wpar_next_scheduled_timestamp');
delete_option('wpar_plugin_dismissed_time');
delete_site_option('wpar_plugin_dismissed_time');
delete_option('wpar_republish_log_history');
delete_site_option('wpar_republish_log_history');
delete_option('wpar_dashboard_widget_options');
delete_site_option('wpar_dashboard_widget_options');
delete_option('wpar_global_republish_post_ids');
delete_site_option('wpar_global_republish_post_ids');
delete_option('wpar_social_credentials');
delete_site_option('wpar_social_credentials');
delete_option('wpar_next_eligible_date');
delete_site_option('wpar_next_eligible_date');
delete_option('revivepress_version');
delete_site_option('revivepress_version');
delete_option('revivepress_install_date');
delete_site_option('revivepress_install_date');
delete_option('revivepress_db_version');
delete_site_option('revivepress_db_version');
delete_option('wpar_next_scheduled');
delete_site_option('wpar_next_scheduled');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('wpar_in_progress');
delete_site_transient('wpar_in_progress');
delete_transient('rvp_import_db_done');
delete_site_transient('rvp_import_db_done');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpar/schedular_health_check');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

