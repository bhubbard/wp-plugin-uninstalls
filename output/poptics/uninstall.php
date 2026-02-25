<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poptics_onboard_settings');
delete_site_option('poptics_onboard_settings');
delete_option('poptics_onboard_details');
delete_site_option('poptics_onboard_details');
delete_option('poptics_settings');
delete_site_option('poptics_settings');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pt_ab_testing_campaigns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pt_ab_testing_campaigns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pt_ab_testing_campaigns' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pt_ab_testing_campaigns' ) );

