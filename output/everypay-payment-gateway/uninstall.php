<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_everypay_settings');
delete_site_option('woocommerce_everypay_settings');
delete_option('woocommerce_everypay_everypay_iris_enabled');
delete_site_option('woocommerce_everypay_everypay_iris_enabled');
delete_option('woocommerce_everypay_everypay_iris_merchant_name');
delete_site_option('woocommerce_everypay_everypay_iris_merchant_name');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

