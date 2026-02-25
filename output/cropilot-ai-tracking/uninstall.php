<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('cropilot_access_token');
delete_site_option('cropilot_access_token');
delete_option('cropilot_refresh_token');
delete_site_option('cropilot_refresh_token');
delete_option('cropilot_woocommerce_enabled');
delete_site_option('cropilot_woocommerce_enabled');
delete_option('cropilot_debug_mode');
delete_site_option('cropilot_debug_mode');
delete_option('cropilot_consent_mode');
delete_site_option('cropilot_consent_mode');
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('cropilot_client_id');
delete_site_option('cropilot_client_id');
delete_option('cropilot_health_etag');
delete_site_option('cropilot_health_etag');
delete_option('cropilot_health_data_cache');
delete_site_option('cropilot_health_data_cache');
delete_option('cropilot_woocommerce_registered');
delete_site_option('cropilot_woocommerce_registered');

// Delete Transients
delete_transient('cropilot_scan_task_id');
delete_site_transient('cropilot_scan_task_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('cropilot_retry_failed_conversions');
wp_clear_scheduled_hook('cropilot_run_health_check');

