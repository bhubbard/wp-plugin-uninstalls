<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cart32wp_client_code');
delete_site_option('cart32wp_client_code');
delete_option('cart32wp_cart32_url');
delete_site_option('cart32wp_cart32_url');
delete_option('cart32wp_c32web_url');
delete_site_option('cart32wp_c32web_url');
delete_option('cart32wp_account_info');
delete_site_option('cart32wp_account_info');
delete_option('cart32wp_access_code');
delete_site_option('cart32wp_access_code');
delete_option('cart32_wp_add_view_cart_to_menu');
delete_site_option('cart32_wp_add_view_cart_to_menu');
delete_option('cart32wp_view_cart_text');
delete_site_option('cart32wp_view_cart_text');
delete_option('last_cart32_update');
delete_site_option('last_cart32_update');
delete_option('last_cart32_call');
delete_site_option('last_cart32_call');

