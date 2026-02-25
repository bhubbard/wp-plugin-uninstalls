<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcd_manual_checks_batch');
delete_site_option('wcd_manual_checks_batch');
delete_option('wcd_disable_admin_bar_menu');
delete_site_option('wcd_disable_admin_bar_menu');
delete_option('wcd_wizard_disabled');
delete_site_option('wcd_wizard_disabled');
delete_option('wcd_sync_url_types');
delete_site_option('wcd_sync_url_types');
delete_option('wcd_initial_setup_completed');
delete_site_option('wcd_initial_setup_completed');
delete_option('wcd_wizard');
delete_site_option('wcd_wizard');
delete_option('wcd_last_urls_sync');
delete_site_option('wcd_last_urls_sync');
delete_option('wcd_auto_update_history');
delete_site_option('wcd_auto_update_history');
delete_option('webchangedetector_api_token');
delete_site_option('webchangedetector_api_token');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('auto_update_themes');
delete_site_option('auto_update_themes');
delete_option('wcd_webhook_key');
delete_site_option('wcd_webhook_key');
delete_option('webchangedetector_api_key');
delete_site_option('webchangedetector_api_key');
delete_option('auto_update_core_major');
delete_site_option('auto_update_core_major');
delete_option('wcd_auto_updates_running');
delete_site_option('wcd_auto_updates_running');
delete_option('wcd_pre_auto_update');
delete_site_option('wcd_pre_auto_update');
delete_option('wcd_last_auto_update_check_time');
delete_site_option('wcd_last_auto_update_check_time');
delete_option('wcd_flash_messages');
delete_site_option('wcd_flash_messages');
delete_option('wcd_post_auto_update');
delete_site_option('wcd_post_auto_update');
delete_option('wcd_wordpress_cron');
delete_site_option('wcd_wordpress_cron');
delete_option('auto_updater.lock');
delete_site_option('auto_updater.lock');

// Delete Transients
delete_transient('wcd_update_check_running');
delete_site_transient('wcd_update_check_running');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('wcd_single_call_webhook_id');
delete_site_transient('wcd_single_call_webhook_id');
delete_transient('webchangedetector_api_status');
delete_site_transient('webchangedetector_api_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcd_daily_sync_event');
wp_clear_scheduled_hook('wcd_sync_auto_update_schedule');
wp_clear_scheduled_hook('wcd_check_update_completion');
wp_clear_scheduled_hook('wcd_wp_version_check');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_maybe_auto_update');
wp_clear_scheduled_hook('wcd_cron_check_post_queues');

