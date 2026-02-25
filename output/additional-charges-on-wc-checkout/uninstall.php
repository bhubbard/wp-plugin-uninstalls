<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_enable_additional_charges_options');
delete_site_option('wc_enable_additional_charges_options');
delete_option('wc_additional_fee_title');
delete_site_option('wc_additional_fee_title');
delete_option('wc_additional_fee_amount');
delete_site_option('wc_additional_fee_amount');
delete_option('wc_additional_fee_categories');
delete_site_option('wc_additional_fee_categories');
delete_option('wc_additional_fee_products');
delete_site_option('wc_additional_fee_products');
delete_option('wc_additional_fee_minimum_cart_amount');
delete_site_option('wc_additional_fee_minimum_cart_amount');
delete_option('wc_additional_fee_condition_type');
delete_site_option('wc_additional_fee_condition_type');
delete_option('wc_additional_fee_include_shipping_charge');
delete_site_option('wc_additional_fee_include_shipping_charge');
delete_option('wc_additional_fee_type');
delete_site_option('wc_additional_fee_type');

