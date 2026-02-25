<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwppp-library');
delete_site_option('jwppp-library');
delete_option('jwppp-licence');
delete_site_option('jwppp-licence');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'jwppp-type-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('jwppp-position');
delete_site_option('jwppp-position');
delete_option('jwppp-poster-image');
delete_site_option('jwppp-poster-image');
delete_option('jwppp-player-width');
delete_site_option('jwppp-player-width');
delete_option('jwppp-player-height');
delete_site_option('jwppp-player-height');
delete_option('jwppp-skin');
delete_site_option('jwppp-skin');
delete_option('jwppp-show-related');
delete_site_option('jwppp-show-related');
delete_option('jwppp-active-share');
delete_site_option('jwppp-active-share');
delete_option('jwppp-share-heading');
delete_site_option('jwppp-share-heading');
delete_option('jwppp-embed-video');
delete_site_option('jwppp-embed-video');
delete_option('jwppp-active-ads');
delete_site_option('jwppp-active-ads');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jwppp-video-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jwppp-video-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jwppp-video-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jwppp-video-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jwppp-video-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jwppp-video-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jwppp-video-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jwppp-video-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jwppp-video-description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jwppp-video-description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jwppp-video-description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jwppp-video-description' ) );

