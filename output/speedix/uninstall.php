<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedix_settings');
delete_site_option('speedix_settings');
delete_option('speedix_setup_complete');
delete_site_option('speedix_setup_complete');
delete_option('speedix_reflection_cache');
delete_site_option('speedix_reflection_cache');
delete_option('speedix_php_runtime');
delete_site_option('speedix_php_runtime');
delete_option('speedix_db_version');
delete_site_option('speedix_db_version');
delete_option('speedix_settings_version');
delete_site_option('speedix_settings_version');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('speedix_site_health_scan');
delete_site_option('speedix_site_health_scan');

// Delete Transients
delete_transient('speedix_memory_warning');
delete_site_transient('speedix_memory_warning');
delete_transient('speedix_overload');
delete_site_transient('speedix_overload');
delete_transient('speedix_redirect_to_setup');
delete_site_transient('speedix_redirect_to_setup');
delete_transient('speedix_calibrate_token');
delete_site_transient('speedix_calibrate_token');
delete_transient('speedix_calibration_data');
delete_site_transient('speedix_calibration_data');
delete_transient('speedix_wizard_preset');
delete_site_transient('speedix_wizard_preset');
delete_transient('speedix_calibration');
delete_site_transient('speedix_calibration');

// Clear Cron Jobs
wp_clear_scheduled_hook('speedix_cleanup');
wp_clear_scheduled_hook('speedix_site_health_scan');
wp_clear_scheduled_hook('speedix_site_health_email');

