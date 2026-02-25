<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('listagram_token');
delete_site_option('listagram_token');
delete_option('listagram_enabled');
delete_site_option('listagram_enabled');
delete_option('listagram_enabled_woocommerce');
delete_site_option('listagram_enabled_woocommerce');
delete_option('listagram_enabled_woocommerce_cart');
delete_site_option('listagram_enabled_woocommerce_cart');

