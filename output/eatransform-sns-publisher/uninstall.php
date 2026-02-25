<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eatransform_sns_last_debug');
delete_site_option('eatransform_sns_last_debug');
delete_option('eatransform_sns_publisher_settings');
delete_site_option('eatransform_sns_publisher_settings');
delete_option('wp_twitter_auto_poster_settings');
delete_site_option('wp_twitter_auto_poster_settings');
delete_option('wp_sns_auto_poster_settings');
delete_site_option('wp_sns_auto_poster_settings');

// Delete Transients
delete_transient('eatransform_sns_error');
delete_site_transient('eatransform_sns_error');
delete_transient('eatransform_sns_success');
delete_site_transient('eatransform_sns_success');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eatransform_sns_addon_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eatransform_sns_addon_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eatransform_sns_addon_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eatransform_sns_addon_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eatransform_sns_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eatransform_sns_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eatransform_sns_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eatransform_sns_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eatransform_sns_posted_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eatransform_sns_posted_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eatransform_sns_posted_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eatransform_sns_posted_at' ) );

