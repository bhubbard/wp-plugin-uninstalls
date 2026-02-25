<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_status_in_isee');
delete_site_option('site_status_in_isee');
delete_option('wpei_show_datasheets');
delete_site_option('wpei_show_datasheets');

// Delete Transients
delete_transient('cached_chart_data');
delete_site_transient('cached_chart_data');
delete_transient('cached_most_searched_keywords');
delete_site_transient('cached_most_searched_keywords');
delete_transient('shop_ranking_data');
delete_site_transient('shop_ranking_data');
delete_transient('cached_most_clicked_data');
delete_site_transient('cached_most_clicked_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_english_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_english_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_english_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_english_name' ) );

