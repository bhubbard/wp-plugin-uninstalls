<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skydropx_visited_permalink_view');
delete_site_option('skydropx_visited_permalink_view');
delete_option('SKYDROPX_SHOP_ID');
delete_site_option('SKYDROPX_SHOP_ID');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('SKYDROPX_ENABLE_QUOTATION');
delete_site_option('SKYDROPX_ENABLE_QUOTATION');
delete_option('SKYDROPX_COUNTRY_QUOTATION');
delete_site_option('SKYDROPX_COUNTRY_QUOTATION');
delete_option('SKYDROPX_TOKEN');
delete_site_option('SKYDROPX_TOKEN');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

