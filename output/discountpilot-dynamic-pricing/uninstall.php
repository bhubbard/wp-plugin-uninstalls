<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dspilot_options');
delete_site_option('dspilot_options');

// Delete Transients
delete_transient('dspilot_shipping_zones');
delete_site_transient('dspilot_shipping_zones');
delete_transient('dspilot_wc_countries');
delete_site_transient('dspilot_wc_countries');
delete_transient('dspilot_wc_states');
delete_site_transient('dspilot_wc_states');
delete_transient('dspilot_wc_product_variations');
delete_site_transient('dspilot_wc_product_variations');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_dspilot_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_dspilot_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_dspilot_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_dspilot_errors_%' ) );

