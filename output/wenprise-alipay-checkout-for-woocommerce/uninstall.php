<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('icl_enable_multi_currency');
delete_site_option('icl_enable_multi_currency');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

