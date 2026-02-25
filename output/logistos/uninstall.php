<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logistos_endpoint_credentials');
delete_site_option('logistos_endpoint_credentials');
delete_option('logistos_endpoint_orders');
delete_site_option('logistos_endpoint_orders');
delete_option('logistos_do_activation_jobs');
delete_site_option('logistos_do_activation_jobs');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_phone');
delete_site_option('woocommerce_store_phone');

