<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aps_db_version');
delete_site_option('aps_db_version');
delete_option('aps_enabled');
delete_site_option('aps_enabled');
delete_option('aps_next');
delete_site_option('aps_next');
delete_option('aps_next_time');
delete_site_option('aps_next_time');
delete_option('aps_start_delay');
delete_site_option('aps_start_delay');
delete_option('aps_delay_time');
delete_site_option('aps_delay_time');
delete_option('aps_cats');
delete_site_option('aps_cats');
delete_option('aps_authors');
delete_site_option('aps_authors');
delete_option('aps_keyword_search');
delete_site_option('aps_keyword_search');
delete_option('aps_drafts');
delete_site_option('aps_drafts');
delete_option('aps_pending');
delete_site_option('aps_pending');
delete_option('aps_publish');
delete_site_option('aps_publish');
delete_option('aps_random');
delete_site_option('aps_random');
delete_option('aps_recycle');
delete_site_option('aps_recycle');
delete_option('aps_recycle_new');
delete_site_option('aps_recycle_new');
delete_option('aps_recycle_min');
delete_site_option('aps_recycle_min');
delete_option('aps_recycle_min_time');
delete_site_option('aps_recycle_min_time');
delete_option('aps_recycle_onthisday');
delete_site_option('aps_recycle_onthisday');
delete_option('aps_batch');
delete_site_option('aps_batch');
delete_option('aps_post_types');
delete_site_option('aps_post_types');
delete_option('aps_hours_mon');
delete_site_option('aps_hours_mon');
delete_option('aps_hours_tue');
delete_site_option('aps_hours_tue');
delete_option('aps_hours_wed');
delete_site_option('aps_hours_wed');
delete_option('aps_hours_thu');
delete_site_option('aps_hours_thu');
delete_option('aps_hours_fri');
delete_site_option('aps_hours_fri');
delete_option('aps_hours_sat');
delete_site_option('aps_hours_sat');
delete_option('aps_hours_sun');
delete_site_option('aps_hours_sun');
delete_option('aps_debug');
delete_site_option('aps_debug');
delete_option('aps_excludes');
delete_site_option('aps_excludes');
delete_option('aps_max_per_day');
delete_site_option('aps_max_per_day');
delete_option('aps_num_day');
delete_site_option('aps_num_day');
delete_option('aps_restart');
delete_site_option('aps_restart');
delete_option('aps_max_log');
delete_site_option('aps_max_log');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'aps_hours_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cron');
delete_site_option('cron');
delete_option('aps_updating');
delete_site_option('aps_updating');
delete_option('aps_logfile');
delete_site_option('aps_logfile');
delete_option('aps_days');
delete_site_option('aps_days');
delete_option('aps_hours');
delete_site_option('aps_hours');

// Clear Cron Jobs
wp_clear_scheduled_hook('aps_auto_post_hook');

