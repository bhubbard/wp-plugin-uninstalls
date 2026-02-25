<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ec_stars_rating_use_jquery');
delete_site_option('ec_stars_rating_use_jquery');
delete_option('ec_stars_rating_size');
delete_site_option('ec_stars_rating_size');
delete_option('ec_stars_rating_hover_color');
delete_site_option('ec_stars_rating_hover_color');
delete_option('ec_stars_rating_default_color');
delete_site_option('ec_stars_rating_default_color');
delete_option('ec_stars_rating_active_color');
delete_site_option('ec_stars_rating_active_color');
delete_option('ec_stars_rating_show_votes');
delete_site_option('ec_stars_rating_show_votes');
delete_option('ec_stars_rating_use_microformats');
delete_site_option('ec_stars_rating_use_microformats');
delete_option('ec_stars_rating_enable_widget');
delete_site_option('ec_stars_rating_enable_widget');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ec_stars_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ec_stars_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ec_stars_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ec_stars_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ec_stars_rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ec_stars_rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ec_stars_rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ec_stars_rating_count' ) );

