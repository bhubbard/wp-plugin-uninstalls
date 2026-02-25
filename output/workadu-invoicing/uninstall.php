<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('workadu_invoicing_banners');
delete_site_option('workadu_invoicing_banners');
delete_option('workadu_invoicing_logo');
delete_site_option('workadu_invoicing_logo');
delete_option('workadu_api_key');
delete_site_option('workadu_api_key');
delete_option('workadu_receipt_series');
delete_site_option('workadu_receipt_series');
delete_option('workadu_invoice_series');
delete_site_option('workadu_invoice_series');
delete_option('workadu_send_to_mail');
delete_site_option('workadu_send_to_mail');
delete_option('workadu_send_to_aade');
delete_site_option('workadu_send_to_aade');
delete_option('workadu_cash');
delete_site_option('workadu_cash');
delete_option('workadu_credit_card');
delete_site_option('workadu_credit_card');
delete_option('workadu_bank_transfer');
delete_site_option('workadu_bank_transfer');
delete_option('workadu_vat_number_field');
delete_site_option('workadu_vat_number_field');
delete_option('workadu_billing_address_field');
delete_site_option('workadu_billing_address_field');
delete_option('workadu_billing_country_field');
delete_site_option('workadu_billing_country_field');
delete_option('workadu_series');
delete_site_option('workadu_series');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'workadu_selected_series' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'workadu_selected_series' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'workadu_selected_series' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'workadu_selected_series' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aade_mark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aade_mark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aade_mark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aade_mark' ) );

