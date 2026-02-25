<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_postcode_order_restriction_enabled');
delete_site_option('woocommerce_postcode_order_restriction_enabled');
delete_option('woocommerce_restrict_gateways_placeorder');
delete_site_option('woocommerce_restrict_gateways_placeorder');
delete_option('woocommerce_postcode_order');
delete_site_option('woocommerce_postcode_order');
delete_option('woocommerce_allow_restrict');
delete_site_option('woocommerce_allow_restrict');
delete_option('woocommerce_restrict_option');
delete_site_option('woocommerce_restrict_option');
delete_option('woocommerce_specific_allowed_gateways');
delete_site_option('woocommerce_specific_allowed_gateways');
delete_option('woocommerce_error_gateways');
delete_site_option('woocommerce_error_gateways');
delete_option('woocommerce_error_placeorder');
delete_site_option('woocommerce_error_placeorder');

