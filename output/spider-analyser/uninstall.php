<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%ver' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wb_spider_info');
delete_site_option('wb_spider_info');
delete_option('wb_spider_analyser_ver');
delete_site_option('wb_spider_analyser_ver');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wb_spider_analyser_cnf_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wb_spider_analyser_promote');
delete_site_option('wb_spider_analyser_promote');
delete_option('sp_an_max_id');
delete_site_option('sp_an_max_id');
delete_option('sync_wb_spider');
delete_site_option('sync_wb_spider');
delete_option('wb_spider_analyser_db_ver');
delete_site_option('wb_spider_analyser_db_ver');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_wb_spider_analyser_cron');
wp_clear_scheduled_hook('wb_wp_spider_trace_cron');

