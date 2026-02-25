<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_by_post_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'filter_rss_feed_settings_filter_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('filter_rss_feed_settings_add_more_post_types_to_main_query');
delete_site_option('filter_rss_feed_settings_add_more_post_types_to_main_query');
delete_option('filter_rss_feed_settings_filter_rss_feed');
delete_site_option('filter_rss_feed_settings_filter_rss_feed');
delete_option('filter_rss_feed_settings_what_post_types_to_show_on_main_query');
delete_site_option('filter_rss_feed_settings_what_post_types_to_show_on_main_query');

