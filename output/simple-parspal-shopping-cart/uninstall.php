<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_cart_title');
delete_site_option('wp_cart_title');
delete_option('wp_cart_empty_text');
delete_site_option('wp_cart_empty_text');
delete_option('cart_return_from_parspal_url');
delete_site_option('cart_return_from_parspal_url');
delete_option('cart_products_page_url');
delete_site_option('cart_products_page_url');
delete_option('wp_use_aff_platform');
delete_site_option('wp_use_aff_platform');
delete_option('cart_parspal_id');
delete_site_option('cart_parspal_id');
delete_option('parspal_password');
delete_site_option('parspal_password');
delete_option('wp_shopping_cart_image_hide');
delete_site_option('wp_shopping_cart_image_hide');
delete_option('cart_base_shipping_cost');
delete_site_option('cart_base_shipping_cost');
delete_option('cart_free_shipping_threshold');
delete_site_option('cart_free_shipping_threshold');
delete_option('addToCartButtonName');
delete_site_option('addToCartButtonName');
delete_option('cart_payment_currency');
delete_site_option('cart_payment_currency');
delete_option('cart_currency_symbol');
delete_site_option('cart_currency_symbol');
delete_option('wp_shopping_cart_collect_address');
delete_site_option('wp_shopping_cart_collect_address');
delete_option('wp_shopping_cart_use_profile_shipping');
delete_site_option('wp_shopping_cart_use_profile_shipping');

