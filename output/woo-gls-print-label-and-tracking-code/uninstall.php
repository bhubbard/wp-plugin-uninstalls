<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('activate_admin');
delete_site_option('activate_admin');
delete_option('wc_gls_server');
delete_site_option('wc_gls_server');
delete_option('wc_gls_print_senderid');
delete_site_option('wc_gls_print_senderid');
delete_option('wc_gls_print_username');
delete_site_option('wc_gls_print_username');
delete_option('wc_gls_print_password');
delete_site_option('wc_gls_print_password');
delete_option('wc_gls_print_sender_name');
delete_site_option('wc_gls_print_sender_name');
delete_option('wc_gls_print_sender_address');
delete_site_option('wc_gls_print_sender_address');
delete_option('wc_gls_print_sender_city');
delete_site_option('wc_gls_print_sender_city');
delete_option('wc_gls_print_sender_zipcode');
delete_site_option('wc_gls_print_sender_zipcode');
delete_option('wc_gls_print_sender_country');
delete_site_option('wc_gls_print_sender_country');
delete_option('wc_gls_print_sender_contact');
delete_site_option('wc_gls_print_sender_contact');
delete_option('wc_gls_print_sender_phone');
delete_site_option('wc_gls_print_sender_phone');
delete_option('wc_gls_print_sender_email');
delete_site_option('wc_gls_print_sender_email');
delete_option('wc_gls_enable_fds');
delete_site_option('wc_gls_enable_fds');
delete_option('wc_gls_print_contactid');
delete_site_option('wc_gls_print_contactid');
delete_option('wc_gls_email_content');
delete_site_option('wc_gls_email_content');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Želim naručiti dostavnu službu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gls_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gls_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gls_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gls_order_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gls_order_parcel_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gls_order_parcel_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gls_order_parcel_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gls_order_parcel_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gls_order_tracking_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gls_order_tracking_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gls_order_tracking_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gls_order_tracking_id' ) );

