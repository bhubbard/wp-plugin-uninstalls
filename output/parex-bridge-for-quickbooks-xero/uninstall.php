<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');
delete_option('wp_pxb_user');
delete_site_option('wp_pxb_user');
delete_option('wp_pxb_module');
delete_site_option('wp_pxb_module');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('wp_pxb_old_user');
delete_site_option('wp_pxb_old_user');
delete_option('pxb_verificaitonEmail_status');
delete_site_option('pxb_verificaitonEmail_status');
delete_option('wp_pxb_secret');
delete_site_option('wp_pxb_secret');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

