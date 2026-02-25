<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmwrpm_enable');
delete_site_option('gmwrpm_enable');
delete_option('gmwrpm_hide_unpurchase');
delete_site_option('gmwrpm_hide_unpurchase');
delete_option('gmwrpm_layout');
delete_site_option('gmwrpm_layout');
delete_option('gmwrpm_showchoose');
delete_site_option('gmwrpm_showchoose');
delete_option('gmwrpm_showimg');
delete_site_option('gmwrpm_showimg');
delete_option('gmwrpm_showdesc');
delete_site_option('gmwrpm_showdesc');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gmwrpm_condintal_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gmwrpm_condintal_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gmwrpm_condintal_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gmwrpm_condintal_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gmwrpm_payment_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gmwrpm_payment_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gmwrpm_payment_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gmwrpm_payment_data' ) );

