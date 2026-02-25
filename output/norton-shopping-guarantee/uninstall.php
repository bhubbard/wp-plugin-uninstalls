<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nsgpp_plugin_activation_register');
delete_site_option('nsgpp_plugin_activation_register');
delete_option('nsgpp_sn');
delete_site_option('nsgpp_sn');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('nsgpp_h');
delete_site_option('nsgpp_h');
delete_option('nsgpp_fee_price');
delete_site_option('nsgpp_fee_price');
delete_option('nsgpp_merchant_percentage');
delete_site_option('nsgpp_merchant_percentage');
delete_option('nsgpp_merchant_percent');
delete_site_option('nsgpp_merchant_percent');

