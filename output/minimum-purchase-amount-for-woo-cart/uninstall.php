<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ct_mpac_show_welcome_modal');
delete_site_option('ct_mpac_show_welcome_modal');
delete_option('ct_mpac_minimum_purchase_value_for_all');
delete_site_option('ct_mpac_minimum_purchase_value_for_all');
delete_option('ct_mpac_cart_limit_message');
delete_site_option('ct_mpac_cart_limit_message');
delete_option('ct_mpac_cart_disable_checkout');
delete_site_option('ct_mpac_cart_disable_checkout');
delete_option('ct_mpac_include_discount_coupons_in_total');
delete_site_option('ct_mpac_include_discount_coupons_in_total');
delete_option('ct_mpac_exclude_shipping_from_cart_total');
delete_site_option('ct_mpac_exclude_shipping_from_cart_total');
delete_option('ct_mpac_minimum_cart_total_for_free_shipping');
delete_site_option('ct_mpac_minimum_cart_total_for_free_shipping');
delete_option('ct-mpac-role-specific-cart-limits');
delete_site_option('ct-mpac-role-specific-cart-limits');
delete_option('ct_mpac_active_version');
delete_site_option('ct_mpac_active_version');

