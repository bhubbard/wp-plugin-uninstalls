<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_twitter_access_token' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('twitterwall_bgcolor');
delete_site_option('twitterwall_bgcolor');
delete_option('twitterwall_avatar_bdcolor');
delete_site_option('twitterwall_avatar_bdcolor');
delete_option('twitterwall_consumer_key');
delete_site_option('twitterwall_consumer_key');
delete_option('twitterwall_consumer_secret');
delete_site_option('twitterwall_consumer_secret');
delete_option('twitterwall_count');
delete_site_option('twitterwall_count');
delete_option('twitterwall_query');
delete_site_option('twitterwall_query');
delete_option('twitterwall_lang');
delete_site_option('twitterwall_lang');
delete_option('twitterwall_url');
delete_site_option('twitterwall_url');
delete_option('twitterwall_options_updated');
delete_site_option('twitterwall_options_updated');

