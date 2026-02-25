<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ti_stat');
delete_site_option('ti_stat');
delete_option('ti_stat_options');
delete_site_option('ti_stat_options');
delete_option('ti_yauth');
delete_site_option('ti_yauth');
delete_option('ti_stat_widget');
delete_site_option('ti_stat_widget');
delete_option('ti_stat_graph');
delete_site_option('ti_stat_graph');
delete_option('ti_stat_cache');
delete_site_option('ti_stat_cache');
delete_option('ti_reports');
delete_site_option('ti_reports');

// Clear Cron Jobs
wp_clear_scheduled_hook('ti_stat_daily_event');

