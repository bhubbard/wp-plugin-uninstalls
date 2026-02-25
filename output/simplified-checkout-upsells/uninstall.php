<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplified_checkout_checkout_endpoint');
delete_site_option('simplified_checkout_checkout_endpoint');
delete_option('simplified_checkout_checkout_live');
delete_site_option('simplified_checkout_checkout_live');
delete_option('simplified_checkout_license_key');
delete_site_option('simplified_checkout_license_key');
delete_option('simplified_checkout_should_create_keys');
delete_site_option('simplified_checkout_should_create_keys');
delete_option('simplified_checkout_wc_keys_created');
delete_site_option('simplified_checkout_wc_keys_created');
delete_option('simplified_checkout_wc_store_url');
delete_site_option('simplified_checkout_wc_store_url');
delete_option('simplified_checkout_wc_consumer_key');
delete_site_option('simplified_checkout_wc_consumer_key');
delete_option('simplified_checkout_wc_consumer_secret');
delete_site_option('simplified_checkout_wc_consumer_secret');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

