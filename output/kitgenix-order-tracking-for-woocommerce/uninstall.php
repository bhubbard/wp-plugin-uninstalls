<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kitgenix_order_tracking_for_woocommerce_lookup_count');
delete_site_option('kitgenix_order_tracking_for_woocommerce_lookup_count');
delete_option('kitgenix_order_tracking_for_woocommerce_tracking_numbers_added');
delete_site_option('kitgenix_order_tracking_for_woocommerce_tracking_numbers_added');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('kitgenix_order_tracking_for_woocommerce_carriers_settings');
delete_site_option('kitgenix_order_tracking_for_woocommerce_carriers_settings');

// Delete Transients
delete_transient('kitgenix_order_tracking_for_woocommerce_do_activation_redirect');
delete_site_transient('kitgenix_order_tracking_for_woocommerce_do_activation_redirect');

