<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paymendo_bank_transfer_admin_sms_message');
delete_site_option('paymendo_bank_transfer_admin_sms_message');
delete_option('paymendo_bank_transfer_admin_sms_enabled');
delete_site_option('paymendo_bank_transfer_admin_sms_enabled');
delete_option('paymendo_bank_transfer_admin_email_enabled');
delete_site_option('paymendo_bank_transfer_admin_email_enabled');
delete_option('paymendo_bank_transfer_admin_sms_number');
delete_site_option('paymendo_bank_transfer_admin_sms_number');
delete_option('paymendo_bank_transfer_customer_sms_message');
delete_site_option('paymendo_bank_transfer_customer_sms_message');
delete_option('paymendo_bank_transfer_customer_sms_enabled');
delete_site_option('paymendo_bank_transfer_customer_sms_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'paymendo_bank_transfer_bank_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'paymendo_bank_transfer_bank_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'paymendo_bank_transfer_bank_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'paymendo_bank_transfer_bank_id' ) );

