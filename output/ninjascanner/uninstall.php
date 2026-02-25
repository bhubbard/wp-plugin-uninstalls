<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nscan_options');
delete_site_option('nscan_options');

// Delete Transients
delete_transient('doing_cron');
delete_site_transient('doing_cron');
delete_transient('nscan_ajax_start');
delete_site_transient('nscan_ajax_start');
delete_transient('nscan_temp_sigs');
delete_site_transient('nscan_temp_sigs');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_ajax_nopriv_nscan_fork');
wp_clear_scheduled_hook('nscan_garbage_collector');
wp_clear_scheduled_hook('nscan_scheduled_scan');

