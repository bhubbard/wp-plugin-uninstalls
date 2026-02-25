<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmwcptwd_cpt');
delete_site_option('mmwcptwd_cpt');
delete_option('mmwcptwd_tax');
delete_site_option('mmwcptwd_tax');
delete_option('mmwcptwd_cwm');
delete_site_option('mmwcptwd_cwm');
delete_option('mmwcptwd');
delete_site_option('mmwcptwd');
delete_option('mmwcptwd_options');
delete_site_option('mmwcptwd_options');
delete_option('last_code');
delete_site_option('last_code');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cpt-taxonomy-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cpt-taxonomy-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cpt-taxonomy-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cpt-taxonomy-image' ) );

