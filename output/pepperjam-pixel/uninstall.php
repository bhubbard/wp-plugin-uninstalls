<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pj_pixel_dismissed_config_notice');
delete_site_option('pj_pixel_dismissed_config_notice');
delete_option('woocommerce_pepperjam_pixel_settings');
delete_site_option('woocommerce_pepperjam_pixel_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pj_pixel_displayed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pj_pixel_displayed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pj_pixel_displayed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pj_pixel_displayed' ) );

