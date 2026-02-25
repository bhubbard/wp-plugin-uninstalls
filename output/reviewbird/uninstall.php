<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'reviewbird_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('reviewbird_store_id');
delete_site_option('reviewbird_store_id');
delete_option('reviewbird_store_status');
delete_site_option('reviewbird_store_status');
delete_option('reviewbird_enable_widget');
delete_site_option('reviewbird_enable_widget');
delete_option('reviewbird_enable_schema');
delete_site_option('reviewbird_enable_schema');
delete_option('reviewbird_force_reviews_open');
delete_site_option('reviewbird_force_reviews_open');

// Delete Transients
delete_transient('reviewbird_oauth_error');
delete_site_transient('reviewbird_oauth_error');
delete_transient('reviewbird_oauth_success');
delete_site_transient('reviewbird_oauth_success');
delete_transient('reviewbird_star_color');
delete_site_transient('reviewbird_star_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reviewbird_avg_stars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reviewbird_avg_stars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reviewbird_avg_stars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reviewbird_avg_stars' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reviewbird_reviews_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reviewbird_reviews_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reviewbird_reviews_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reviewbird_reviews_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reviewbird_rating_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reviewbird_rating_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reviewbird_rating_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reviewbird_rating_counts' ) );

