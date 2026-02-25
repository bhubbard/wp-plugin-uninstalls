<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_minimum_order_amount_value');
delete_site_option('wc_minimum_order_amount_value');
delete_option('wc_minimum_order_cart_notification');
delete_site_option('wc_minimum_order_cart_notification');

