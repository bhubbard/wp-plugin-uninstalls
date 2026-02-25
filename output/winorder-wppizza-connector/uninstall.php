<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppizza');
delete_site_option('wppizza');
delete_option('wppizza_addingredients');
delete_site_option('wppizza_addingredients');
delete_option('wppizza_dbp');
delete_site_option('wppizza_dbp');
delete_option('wppizza_pickup_prices');
delete_site_option('wppizza_pickup_prices');
delete_option('wppizza_preorder');
delete_site_option('wppizza_preorder');
delete_option('wppizza_stockmanagement');
delete_site_option('wppizza_stockmanagement');
delete_option('wppizza_cad');
delete_site_option('wppizza_cad');
delete_option('wppizza_cad_coupons');
delete_site_option('wppizza_cad_coupons');
delete_option('wppizza_cad_discounts');
delete_site_option('wppizza_cad_discounts');
delete_option('wppizza_gateway_cod');
delete_site_option('wppizza_gateway_cod');
delete_option('wppizza_gateway_paypal');
delete_site_option('wppizza_gateway_paypal');

