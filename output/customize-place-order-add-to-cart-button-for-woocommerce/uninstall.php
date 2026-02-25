<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpoatcbfw_place_order_text');
delete_site_option('cpoatcbfw_place_order_text');
delete_option('cpoatcbfw_add_to_cart_text');
delete_site_option('cpoatcbfw_add_to_cart_text');

