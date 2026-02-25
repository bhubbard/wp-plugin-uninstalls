<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_enable_custom_shipping_fee');
delete_site_option('wc_enable_custom_shipping_fee');
delete_option('wc_custom_shipping_fee_type');
delete_site_option('wc_custom_shipping_fee_type');
delete_option('wc_custom_fee_minimum_cart_amount');
delete_site_option('wc_custom_fee_minimum_cart_amount');
delete_option('wc_custom_fee_condition_type');
delete_site_option('wc_custom_fee_condition_type');
delete_option('wc_custom_shipping_fee_title');
delete_site_option('wc_custom_shipping_fee_title');
delete_option('wc_custom_shipping_fee_amount');
delete_site_option('wc_custom_shipping_fee_amount');
delete_option('wc_custom_shipping_fee_include_shipping_charge');
delete_site_option('wc_custom_shipping_fee_include_shipping_charge');

