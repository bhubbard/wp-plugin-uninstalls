<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_qr_pay_allow');
delete_site_option('woo_qr_pay_allow');
delete_option('woo_qr_pay_iban');
delete_site_option('woo_qr_pay_iban');
delete_option('woo_qr_pay_account_owner');
delete_site_option('woo_qr_pay_account_owner');
delete_option('woo_qr_pay_compatibility_mode');
delete_site_option('woo_qr_pay_compatibility_mode');
delete_option('woo_qr_pay_add_to_email');
delete_site_option('woo_qr_pay_add_to_email');
delete_option('woo_qr_pay_custom_description_email_visibility');
delete_site_option('woo_qr_pay_custom_description_email_visibility');
delete_option('woocommerce_bacs_settings');
delete_site_option('woocommerce_bacs_settings');
delete_option('woo_qr_pay_custom_description');
delete_site_option('woo_qr_pay_custom_description');
delete_option('wc_qr_payment_migrated');
delete_site_option('wc_qr_payment_migrated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_qr_payment_code_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_qr_payment_code_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_qr_payment_code_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_qr_payment_code_url' ) );

