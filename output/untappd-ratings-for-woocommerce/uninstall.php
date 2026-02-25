<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'urwc_map_scid_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'urwc_map_max_checkins_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('urwc_map_show_infowindow_disclaimer');
delete_site_option('urwc_map_show_infowindow_disclaimer');
delete_option('urwc_map_show_ratings_to_admin_only');
delete_site_option('urwc_map_show_ratings_to_admin_only');
delete_option('urwc_map_add_product_link');
delete_site_option('urwc_map_add_product_link');
delete_option('urwc_map_cache_is_working');
delete_site_option('urwc_map_cache_is_working');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_keys' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('urwc_cache_time');
delete_site_option('urwc_cache_time');
delete_option('urwc_ratelimit_remaining');
delete_site_option('urwc_ratelimit_remaining');
delete_option('urwc_client_id');
delete_site_option('urwc_client_id');
delete_option('urwc_client_secret');
delete_site_option('urwc_client_secret');
delete_option('urwc_api_url');
delete_site_option('urwc_api_url');
delete_option('urwc_api_useragent');
delete_site_option('urwc_api_useragent');
delete_option('urwc_show_logo');
delete_site_option('urwc_show_logo');
delete_option('urwc_ratings_enabled');
delete_site_option('urwc_ratings_enabled');
delete_option('urwc_ratings_sort_enabled');
delete_site_option('urwc_ratings_sort_enabled');
delete_option('urwc_ratings_show_total');
delete_site_option('urwc_ratings_show_total');
delete_option('urwc_ratings_show_text');
delete_site_option('urwc_ratings_show_text');
delete_option('urwc_ratings_add_to_structured_data');
delete_site_option('urwc_ratings_add_to_structured_data');
delete_option('urwc_ratings_structured_data_comments_only');
delete_site_option('urwc_ratings_structured_data_comments_only');

// Delete Transients
delete_transient('urwc_ratelimited');
delete_site_transient('urwc_ratelimited');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_urwc_beer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_urwc_beer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_urwc_beer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_urwc_beer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_urwc_beer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_urwc_beer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_urwc_beer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_urwc_beer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_urwc_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_urwc_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_urwc_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_urwc_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_urwc_beer_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_urwc_beer_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_urwc_beer_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_urwc_beer_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_urwc_rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_urwc_rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_urwc_rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_urwc_rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_urwc_average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_urwc_average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_urwc_average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_urwc_average_rating' ) );

