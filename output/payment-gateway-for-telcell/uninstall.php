<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hkd_telcell_version_option');
delete_site_option('hkd_telcell_version_option');
delete_option('language_payment_telcell');
delete_site_option('language_payment_telcell');
delete_option('hkdigital_telcell_checkout_id');
delete_site_option('hkdigital_telcell_checkout_id');
delete_option('hkd_check_activation_telcell');
delete_site_option('hkd_check_activation_telcell');
delete_option('hkdigital_dump_telcell');
delete_site_option('hkdigital_dump_telcell');
delete_option('woocommerce_hkd_telcell_settings');
delete_site_option('woocommerce_hkd_telcell_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'PaymentID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'PaymentID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'PaymentID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'PaymentID' ) );

