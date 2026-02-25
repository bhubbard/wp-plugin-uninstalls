<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'queantic_analytics_tracking_special_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('queantic_analytics_do_redirect');
delete_site_option('queantic_analytics_do_redirect');
delete_option('queantic_analytics_tracking_special_home');
delete_site_option('queantic_analytics_tracking_special_home');
delete_option('queantic_analytics_tracking_special_blog');
delete_site_option('queantic_analytics_tracking_special_blog');
delete_option('queantic_analytics_tracking_special_404');
delete_site_option('queantic_analytics_tracking_special_404');
delete_option('queantic_analytics_tracking_special_search');
delete_site_option('queantic_analytics_tracking_special_search');
delete_option('queantic_analytics_tracking_special_archive');
delete_site_option('queantic_analytics_tracking_special_archive');
delete_option('queantic_analytics_tracking_special_wc_shop');
delete_site_option('queantic_analytics_tracking_special_wc_shop');

// Delete Transients
delete_transient('queantic_analytics_saved_count');
delete_site_transient('queantic_analytics_saved_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ptp_tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ptp_tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ptp_tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ptp_tracking_code' ) );

