<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_stock_snapshot_action_scheduler');
delete_site_option('alg_wc_stock_snapshot_action_scheduler');
delete_option('alg_wc_stock_snapshot_action_scheduler_interval');
delete_site_option('alg_wc_stock_snapshot_action_scheduler_interval');
delete_option('alg_wc_stock_snapshot_tools_take_snapshot');
delete_site_option('alg_wc_stock_snapshot_tools_take_snapshot');
delete_option('alg_wc_stock_snapshot_tools_delete_snapshots');
delete_site_option('alg_wc_stock_snapshot_tools_delete_snapshots');
delete_option('alg_wc_stock_snapshot_clear_transients');
delete_site_option('alg_wc_stock_snapshot_clear_transients');
delete_option('alg_wc_stock_snapshot_url');
delete_site_option('alg_wc_stock_snapshot_url');
delete_option('alg_wc_stock_snapshot_product_update');
delete_site_option('alg_wc_stock_snapshot_product_update');
delete_option('alg_wc_stock_snapshot_include_variations');
delete_site_option('alg_wc_stock_snapshot_include_variations');
delete_option('alg_wc_stock_snapshot_count_children');
delete_site_option('alg_wc_stock_snapshot_count_children');
delete_option('alg_wc_stock_snapshot_extra_data');
delete_site_option('alg_wc_stock_snapshot_extra_data');
delete_option('alg_wc_stock_snapshot_version');
delete_site_option('alg_wc_stock_snapshot_version');
delete_option('alg_wc_stock_snapshot_history_date_points');
delete_site_option('alg_wc_stock_snapshot_history_date_points');
delete_option('alg_wc_stock_snapshot_history_product_cats');
delete_site_option('alg_wc_stock_snapshot_history_product_cats');
delete_option('alg_wc_stock_snapshot_report_do_in_background');
delete_site_option('alg_wc_stock_snapshot_report_do_in_background');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('alg_wc_stock_snapshot_report_data');
delete_site_transient('alg_wc_stock_snapshot_report_data');
delete_transient('alg_wc_stock_snapshot_restocked');
delete_site_transient('alg_wc_stock_snapshot_restocked');
delete_transient('alg_wc_stock_snapshot_history');
delete_site_transient('alg_wc_stock_snapshot_history');
delete_transient('alg_wc_stock_snapshot_report');
delete_site_transient('alg_wc_stock_snapshot_report');

// Clear Cron Jobs
wp_clear_scheduled_hook('alg_wc_stock_snapshot');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_stock_snapshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_stock_snapshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_stock_snapshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_stock_snapshot' ) );

