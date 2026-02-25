<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speed_matrix_settings');
delete_site_option('speed_matrix_settings');
delete_option('speed_matrix_last_cleanup');
delete_site_option('speed_matrix_last_cleanup');
delete_option('speed_matrix_activated');
delete_site_option('speed_matrix_activated');
delete_option('speed_matrix_version');
delete_site_option('speed_matrix_version');

// Delete Transients
delete_transient('speed_matrix_activation_notice');
delete_site_transient('speed_matrix_activation_notice');
delete_transient('speed_matrix_cleanup_running');
delete_site_transient('speed_matrix_cleanup_running');
delete_transient('speed_matrix_cache_stats');
delete_site_transient('speed_matrix_cache_stats');
delete_transient('speed_matrix_transients_count');
delete_site_transient('speed_matrix_transients_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('speed_matrix_auto_cleanup_event');

