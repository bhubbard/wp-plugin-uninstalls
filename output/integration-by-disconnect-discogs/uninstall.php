<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disconnect_woocommerce_consumer_key');
delete_site_option('disconnect_woocommerce_consumer_key');
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');
delete_option('disconnect_woocommerce_consumer_secret');
delete_site_option('disconnect_woocommerce_consumer_secret');

