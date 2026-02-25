<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plg_cond_notify_interval');
delete_site_option('plg_cond_notify_interval');
delete_option('plg_cond_update_date_time');
delete_site_option('plg_cond_update_date_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'plg_cond_text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('plugins_condition_cron');
wp_clear_scheduled_hook('plugins_condition_notify_cron');

