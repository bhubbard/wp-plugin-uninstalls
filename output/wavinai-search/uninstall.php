<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%categories', '_site_transient_%categories' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%brands', '_site_transient_%brands' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%attributes', '_site_transient_%attributes' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wavinai_search_30_days_total_clicks');
delete_site_transient('wavinai_search_30_days_total_clicks');
delete_transient('wavinai_search_top_clicks');
delete_site_transient('wavinai_search_top_clicks');
delete_transient('wavinai_search_top_searches');
delete_site_transient('wavinai_search_top_searches');
delete_transient('wavinai_search_30_days_total_searches');
delete_site_transient('wavinai_search_30_days_total_searches');
delete_transient('wavinai_search_30_days_non_empty_searches');
delete_site_transient('wavinai_search_30_days_non_empty_searches');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

