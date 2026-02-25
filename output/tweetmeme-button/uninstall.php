<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tm_api_app_id');
delete_site_option('tm_api_app_id');
delete_option('tm_api_app_key');
delete_site_option('tm_api_app_key');
delete_option('tm_source');
delete_site_option('tm_source');
delete_option('tm_version');
delete_site_option('tm_version');
delete_option('tm_url_shortner');
delete_site_option('tm_url_shortner');
delete_option('tm_api_key');
delete_site_option('tm_api_key');
delete_option('tm_space');
delete_site_option('tm_space');
delete_option('tm_hashtags');
delete_site_option('tm_hashtags');
delete_option('tm_hashtags_tags');
delete_site_option('tm_hashtags_tags');
delete_option('tm_style');
delete_site_option('tm_style');
delete_option('tm_where');
delete_site_option('tm_where');
delete_option('tm_display_page');
delete_site_option('tm_display_page');
delete_option('tm_display_front');
delete_site_option('tm_display_front');
delete_option('tm_display_rss');
delete_site_option('tm_display_rss');
delete_option('tm_ping');
delete_site_option('tm_ping');
delete_option('tm_rss_where');
delete_site_option('tm_rss_where');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tm_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tm_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tm_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tm_hashtags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tweetmeme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tweetmeme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tweetmeme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tweetmeme' ) );

