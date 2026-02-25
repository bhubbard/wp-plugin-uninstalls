<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('masterqr_settings');
delete_site_option('masterqr_settings');
delete_option('masterqr_pagety');
delete_site_option('masterqr_pagety');
delete_option('masterqr_logo_posttype');
delete_site_option('masterqr_logo_posttype');
delete_option('masterqr_link_generator');
delete_site_option('masterqr_link_generator');
delete_option('MASTERLite_QR_shortcode_docs');
delete_site_option('MASTERLite_QR_shortcode_docs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'masterqr_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'masterqr_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'masterqr_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'masterqr_meta' ) );

