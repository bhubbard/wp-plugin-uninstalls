<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_default_customer_address');
delete_site_option('woocommerce_default_customer_address');
delete_option('woocommerce_shipping_tax_class');
delete_site_option('woocommerce_shipping_tax_class');
delete_option('woocommerce_tax_round_at_subtotal');
delete_site_option('woocommerce_tax_round_at_subtotal');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

