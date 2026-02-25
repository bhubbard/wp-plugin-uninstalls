<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_tab_direct_to_checkout_single_product_page_button_text');
delete_site_option('wc_settings_tab_direct_to_checkout_single_product_page_button_text');
delete_option('wc_settings_tab_direct_to_checkout_simple_shop_page_button_text');
delete_site_option('wc_settings_tab_direct_to_checkout_simple_shop_page_button_text');
delete_option('wc_settings_tab_direct_to_checkout_add_cart_to_checkout');
delete_site_option('wc_settings_tab_direct_to_checkout_add_cart_to_checkout');

