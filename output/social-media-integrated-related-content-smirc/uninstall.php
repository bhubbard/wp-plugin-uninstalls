<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('required_keyword');
delete_site_option('required_keyword');
delete_option('title_separator');
delete_site_option('title_separator');
delete_option('exclude_list_google_blogsearch');
delete_site_option('exclude_list_google_blogsearch');
delete_option('exclude_list_twitter_search');
delete_site_option('exclude_list_twitter_search');
delete_option('header_text');
delete_site_option('header_text');
delete_option('header_google_blogsearch');
delete_site_option('header_google_blogsearch');
delete_option('header_twitter_search');
delete_site_option('header_twitter_search');
delete_option('animate_reveal');
delete_site_option('animate_reveal');
delete_option('data_source_google_blogsearch');
delete_site_option('data_source_google_blogsearch');
delete_option('num_results_google_blogsearch');
delete_site_option('num_results_google_blogsearch');
delete_option('data_source_twitter_search');
delete_site_option('data_source_twitter_search');
delete_option('num_results_twitter_search');
delete_site_option('num_results_twitter_search');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'header_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

