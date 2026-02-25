<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_nip24_option_keyid');
delete_site_option('woocommerce_nip24_option_keyid');
delete_option('woocommerce_nip24_option_key');
delete_site_option('woocommerce_nip24_option_key');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('woocommerce_nip24_option_url');
delete_site_option('woocommerce_nip24_option_url');
delete_option('woocommerce_nip24_option_vatid_field');
delete_site_option('woocommerce_nip24_option_vatid_field');
delete_option('woocommerce_nip24_option_vatid_required');
delete_site_option('woocommerce_nip24_option_vatid_required');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_company_vat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_company_vat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_company_vat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_company_vat_id' ) );

