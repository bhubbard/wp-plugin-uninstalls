<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('otoksa_city_mapping');
delete_site_option('otoksa_city_mapping');
delete_option('ksa_nav_city_mapping');
delete_site_option('ksa_nav_city_mapping');
delete_option('otoksa_shortcode_required');
delete_site_option('otoksa_shortcode_required');
delete_option('ksa_nav_shortcode_required');
delete_site_option('ksa_nav_shortcode_required');
delete_option('otoksa_refresh_token');
delete_site_option('otoksa_refresh_token');
delete_option('ksa_nav_refresh_token');
delete_site_option('ksa_nav_refresh_token');

// Delete Transients
delete_transient('otoksa_access_token');
delete_site_transient('otoksa_access_token');
delete_transient('ksa_nav_access_token');
delete_site_transient('ksa_nav_access_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_otoksa_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_otoksa_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_otoksa_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_otoksa_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ksa_national_address_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ksa_national_address_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ksa_national_address_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ksa_national_address_shortcode' ) );

