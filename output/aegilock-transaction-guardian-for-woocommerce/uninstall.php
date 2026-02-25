<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aegilock_tg_version');
delete_site_option('aegilock_tg_version');
delete_option('aegilock_wizard_completed');
delete_site_option('aegilock_wizard_completed');
delete_option('aegilock_wc_settings');
delete_site_option('aegilock_wc_settings');
delete_option('aegilock_block_high_risk');
delete_site_option('aegilock_block_high_risk');
delete_option('aegilock_hold_medium_risk');
delete_site_option('aegilock_hold_medium_risk');
delete_option('aegilock_enabled');
delete_site_option('aegilock_enabled');
delete_option('aegilock_activated_version');
delete_site_option('aegilock_activated_version');
delete_option('aegilock_activation_time');
delete_site_option('aegilock_activation_time');
delete_option('aegilock_tg_active');
delete_site_option('aegilock_tg_active');
delete_option('aegilock_tg_activated_at');
delete_site_option('aegilock_tg_activated_at');
delete_option('aegilock_tg_db_ready');
delete_site_option('aegilock_tg_db_ready');
delete_option('aegilock_tg_db_version');
delete_site_option('aegilock_tg_db_version');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('aegilock_tg_db_error');
delete_site_transient('aegilock_tg_db_error');
delete_transient('aegilock_return_stats');
delete_site_transient('aegilock_return_stats');
delete_transient('aegilock_wizard_error');
delete_site_transient('aegilock_wizard_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('aegilock_check_for_updates');
wp_clear_scheduled_hook('aegilock_initial_activation_ping');
wp_clear_scheduled_hook('aegilock_weekly_tracking');
wp_clear_scheduled_hook('aegilock_wc_daily_cleanup');

