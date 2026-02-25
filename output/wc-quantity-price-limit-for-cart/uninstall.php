<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qplc_quantity_price_limit_product_limits');
delete_site_option('qplc_quantity_price_limit_product_limits');
delete_option('qplc_quantity_price_limit_cart_limits');
delete_site_option('qplc_quantity_price_limit_cart_limits');

