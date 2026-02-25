<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('md_shipment_outside_ue');
delete_site_option('md_shipment_outside_ue');
delete_option('md_packaging_weight');
delete_site_option('md_packaging_weight');
delete_option('md_calculate_shipping_before_coupon');
delete_site_option('md_calculate_shipping_before_coupon');
delete_option('md_api_key');
delete_site_option('md_api_key');
delete_option('md_log');
delete_site_option('md_log');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'md_label_error_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('md_contracts_edition');
delete_site_option('md_contracts_edition');
delete_option('md_company_name');
delete_site_option('md_company_name');
delete_option('md_complete_name');
delete_site_option('md_complete_name');
delete_option('md_address');
delete_site_option('md_address');
delete_option('md_address_2');
delete_site_option('md_address_2');
delete_option('md_postal_box');
delete_site_option('md_postal_box');
delete_option('md_zip_code');
delete_site_option('md_zip_code');
delete_option('md_city');
delete_site_option('md_city');
delete_option('md_phone');
delete_site_option('md_phone');
delete_option('md_shipment_type');
delete_site_option('md_shipment_type');
delete_option('md_default_hscode');
delete_site_option('md_default_hscode');
delete_option('md_default_country');
delete_site_option('md_default_country');
delete_option('md_default_fee');
delete_site_option('md_default_fee');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('md_vat_number');
delete_site_option('md_vat_number');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('md_uk_eori');
delete_site_option('md_uk_eori');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

