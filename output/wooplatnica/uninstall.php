<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_uplatnica_settings');
delete_site_option('woocommerce_uplatnica_settings');
delete_option('wooplatnica_uplatnica_settings');
delete_site_option('wooplatnica_uplatnica_settings');

