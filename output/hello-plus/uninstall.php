<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_onboarded');
delete_site_option('elementor_onboarded');
delete_option('elementor_google_maps_api_key');
delete_site_option('elementor_google_maps_api_key');
delete_option('elementor_connect_site_key');
delete_site_option('elementor_connect_site_key');

// Delete Transients
delete_transient('elementor_core_campaign');
delete_site_transient('elementor_core_campaign');
delete_transient('_wc_activation_redirect');
delete_site_transient('_wc_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_conditions' ) );

