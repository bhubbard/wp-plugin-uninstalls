<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_paydart_settings');
delete_site_option('woocommerce_paydart_settings');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('isWebsiteAdded');
delete_site_option('isWebsiteAdded');
delete_option('websiteOption');
delete_site_option('websiteOption');
delete_option('woocommerce_pay_page_id');
delete_site_option('woocommerce_pay_page_id');

