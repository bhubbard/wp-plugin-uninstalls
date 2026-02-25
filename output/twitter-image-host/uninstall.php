<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitter_image_host_link_thumbnails');
delete_site_option('twitter_image_host_link_thumbnails');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'twitter_image_host_oauth_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('twitter_image_host_oauth_consumer_key');
delete_site_option('twitter_image_host_oauth_consumer_key');
delete_option('twitter_image_host_oauth_consumer_secret');
delete_site_option('twitter_image_host_oauth_consumer_secret');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'twitter_image_host_oauth_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'twitter_image_host_oauth_token_secret_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('twitter_image_host_author_twitter_account_map');
delete_site_option('twitter_image_host_author_twitter_account_map');
delete_option('twitter_image_host_access_key');
delete_site_option('twitter_image_host_access_key');
delete_option('twitter_image_host_max_width');
delete_site_option('twitter_image_host_max_width');
delete_option('twitter_image_host_max_height');
delete_site_option('twitter_image_host_max_height');
delete_option('twitter_image_host_override_url_prefix');
delete_site_option('twitter_image_host_override_url_prefix');
delete_option('twitter_image_host_widget');
delete_site_option('twitter_image_host_widget');

