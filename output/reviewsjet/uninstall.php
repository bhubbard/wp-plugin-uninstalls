<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reviewsjet_auth');
delete_site_option('reviewsjet_auth');
delete_option('reviewsjet_settings');
delete_site_option('reviewsjet_settings');

// Delete Transients
delete_transient('reviewsjet_cache');
delete_site_transient('reviewsjet_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('reviewsjet_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reviewsjet_user_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reviewsjet_user_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reviewsjet_user_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reviewsjet_user_preferences' ) );

