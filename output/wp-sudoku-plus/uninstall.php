<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-sudoku-data-count');
delete_site_option('wp-sudoku-data-count');
delete_option('wp-sudoku-rating-counts');
delete_site_option('wp-sudoku-rating-counts');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpsud_cron_event');

