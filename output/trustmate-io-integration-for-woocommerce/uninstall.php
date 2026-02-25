<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustmate_invitations_enabled');
delete_site_option('trustmate_invitations_enabled');
delete_option('trustmate_category_path_mode');
delete_site_option('trustmate_category_path_mode');
delete_option('trustmate_account_uuid');
delete_site_option('trustmate_account_uuid');
delete_option('trustmate_account_language_uuids');
delete_site_option('trustmate_account_language_uuids');
delete_option('trustmate_widget_muskrat');
delete_site_option('trustmate_widget_muskrat');
delete_option('trustmate_widget_muskrat2');
delete_site_option('trustmate_widget_muskrat2');
delete_option('trustmate_widget_bee');
delete_site_option('trustmate_widget_bee');
delete_option('trustmate_widget_lemur');
delete_site_option('trustmate_widget_lemur');
delete_option('trustmate_widget_product_ferret');
delete_site_option('trustmate_widget_product_ferret');
delete_option('trustmate_widget_product_ferret2');
delete_site_option('trustmate_widget_product_ferret2');
delete_option('trustmate_widget_hydra');
delete_site_option('trustmate_widget_hydra');
delete_option('trustmate_widget_gorilla');
delete_site_option('trustmate_widget_gorilla');
delete_option('trustmate_widget_badger');
delete_site_option('trustmate_widget_badger');
delete_option('trustmate_widget_badger2');
delete_site_option('trustmate_widget_badger2');
delete_option('trustmate_widget_alpaca');
delete_site_option('trustmate_widget_alpaca');
delete_option('trustmate_widget_ferret');
delete_site_option('trustmate_widget_ferret');
delete_option('trustmate_widget_ferret2');
delete_site_option('trustmate_widget_ferret2');
delete_option('trustmate_widget_chupacabra');
delete_site_option('trustmate_widget_chupacabra');
delete_option('trustmate_widget_hornet');
delete_site_option('trustmate_widget_hornet');
delete_option('trustmate_widget_multihornet');
delete_site_option('trustmate_widget_multihornet');
delete_option('trustmate_widget_owl');
delete_site_option('trustmate_widget_owl');
delete_option('trustmate_instant_review');
delete_site_option('trustmate_instant_review');
delete_option('trustmate_base_url');
delete_site_option('trustmate_base_url');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('trustmate_base_widget_url');
delete_site_option('trustmate_base_widget_url');
delete_option('trustmate_partner_token');
delete_site_option('trustmate_partner_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rank_math_gtin_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rank_math_gtin_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rank_math_gtin_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rank_math_gtin_code' ) );

