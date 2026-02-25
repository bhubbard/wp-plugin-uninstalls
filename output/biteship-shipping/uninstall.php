<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_coordinate');
delete_site_option('woocommerce_store_coordinate');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_shipper_name');
delete_site_option('woocommerce_store_shipper_name');
delete_option('woocommerce_store_shipper_phone');
delete_site_option('woocommerce_store_shipper_phone');
delete_option('woocommerce_biteship_settings');
delete_site_option('woocommerce_biteship_settings');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_cod_settings');
delete_site_option('woocommerce_cod_settings');

