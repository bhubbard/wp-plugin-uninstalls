<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('booter_settings');
delete_site_option('booter_settings');
delete_option('booter_version');
delete_site_option('booter_version');
delete_option('wpseo_xml');
delete_site_option('wpseo_xml');
delete_option('wpseo');
delete_site_option('wpseo');
delete_option('aioseop_options');
delete_site_option('aioseop_options');

// Delete Transients
delete_transient('booter_disavow_list_downloaded_at');
delete_site_transient('booter_disavow_list_downloaded_at');
delete_transient('booter_bad_referers');
delete_site_transient('booter_bad_referers');
delete_transient('booter_bad_robots');
delete_site_transient('booter_bad_robots');
delete_transient('booter_bad_referers_updated_at');
delete_site_transient('booter_bad_referers_updated_at');
delete_transient('booter_bad_robots_updated_at');
delete_site_transient('booter_bad_robots_updated_at');
delete_transient('upress_enable');
delete_site_transient('upress_enable');

// Clear Cron Jobs
wp_clear_scheduled_hook('booter_404_log_cleanup');
wp_clear_scheduled_hook('booter_404_log_daily_report');
wp_clear_scheduled_hook('booter_404_log_report');
wp_clear_scheduled_hook('booter_write_robots_file');

