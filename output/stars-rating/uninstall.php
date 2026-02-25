<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enabled_post_types');
delete_site_option('enabled_post_types');
delete_option('require_rating');
delete_site_option('require_rating');
delete_option('avg_rating_display');
delete_site_option('avg_rating_display');
delete_option('stars_style');
delete_site_option('stars_style');
delete_option('google_search_stars');
delete_site_option('google_search_stars');
delete_option('google_search_stars_type');
delete_site_option('google_search_stars_type');
delete_option('sr_negative_rating_alert');
delete_site_option('sr_negative_rating_alert');
delete_option('sr_negative_rating_threshold');
delete_site_option('sr_negative_rating_threshold');
delete_option('sr_negative_rating_contact_url');
delete_site_option('sr_negative_rating_contact_url');
delete_option(' avg_rating_display');
delete_site_option(' avg_rating_display');
delete_option(' enabled_post_types');
delete_site_option(' enabled_post_types');
delete_option(' google_search_stars');
delete_site_option(' google_search_stars');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sr-comments-rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sr-comments-rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sr-comments-rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sr-comments-rating' ) );

