<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('activate_admin_dpd');
delete_site_option('activate_admin_dpd');
delete_option('wc_dpd_server');
delete_site_option('wc_dpd_server');
delete_option('wc_dpd_print_username');
delete_site_option('wc_dpd_print_username');
delete_option('wc_dpd_print_password');
delete_site_option('wc_dpd_print_password');
delete_option('wc_dpd_print_sender_name');
delete_site_option('wc_dpd_print_sender_name');
delete_option('wc_dpd_print_sender_address');
delete_site_option('wc_dpd_print_sender_address');
delete_option('wc_dpd_print_sender_city');
delete_site_option('wc_dpd_print_sender_city');
delete_option('wc_dpd_print_sender_zipcode');
delete_site_option('wc_dpd_print_sender_zipcode');
delete_option('wc_dpd_print_sender_country');
delete_site_option('wc_dpd_print_sender_country');
delete_option('wc_dpd_print_sender_contact');
delete_site_option('wc_dpd_print_sender_contact');
delete_option('wc_dpd_print_sender_phone');
delete_site_option('wc_dpd_print_sender_phone');
delete_option('wc_dpd_print_sender_email');
delete_site_option('wc_dpd_print_sender_email');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('wc_dpd_email_content');
delete_site_option('wc_dpd_email_content');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dpd_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dpd_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dpd_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dpd_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dpd_order_tracking_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dpd_order_tracking_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dpd_order_tracking_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dpd_order_tracking_filename' ) );

