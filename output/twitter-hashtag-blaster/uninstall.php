<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitter_hashtag_blaster_hashtag');
delete_site_option('twitter_hashtag_blaster_hashtag');
delete_option('twitter_hashtag_blaster_button_size');
delete_site_option('twitter_hashtag_blaster_button_size');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'twitter_hashtag_blaster_bitly' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'twitter_hashtag_blaster_bitly' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'twitter_hashtag_blaster_bitly' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'twitter_hashtag_blaster_bitly' ) );

