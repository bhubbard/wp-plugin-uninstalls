<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('html_validation_completed_scan');
delete_site_option('html_validation_completed_scan');
delete_option('html_validation_cron_frequency');
delete_site_option('html_validation_cron_frequency');
delete_option('html_validation_error_types');
delete_site_option('html_validation_error_types');
delete_option('html_validation_version');
delete_site_option('html_validation_version');
delete_option('html_validation_terms');
delete_site_option('html_validation_terms');
delete_option('html_validation_posttypes');
delete_site_option('html_validation_posttypes');
delete_option('html_validation_scan_themes');
delete_site_option('html_validation_scan_themes');
delete_option('html_validation_errors_per_page');
delete_site_option('html_validation_errors_per_page');
delete_option('html_validation_external_sources');
delete_site_option('html_validation_external_sources');

// Clear Cron Jobs
wp_clear_scheduled_hook('html_validation_initial_scan_cron_hook');
wp_clear_scheduled_hook('html_validation_auto_scan_cron_hook');
wp_clear_scheduled_hook('html_validation_inital_scan_cron_hook');

