<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_gateway_khipu_payment_methods');
delete_site_option('woocommerce_gateway_khipu_payment_methods');
delete_option('woocommerce_khipuregulartransfer_settings');
delete_site_option('woocommerce_khipuregulartransfer_settings');
delete_option('woocommerce_khipusimplifiedtransfer_settings');
delete_site_option('woocommerce_khipusimplifiedtransfer_settings');

