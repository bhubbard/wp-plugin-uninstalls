<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('rivio_settings');
delete_site_option('rivio_settings');
delete_option('rivio_just_installed');
delete_site_option('rivio_just_installed');
delete_option('default_star_ratings_enabled');
delete_site_option('default_star_ratings_enabled');
delete_option('woocommerce_enable_review_rating');
delete_site_option('woocommerce_enable_review_rating');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );

