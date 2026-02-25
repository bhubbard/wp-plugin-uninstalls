<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_coinify_settings');
delete_site_option('woocommerce_coinify_settings');
delete_option('pgcfw_shared_secret');
delete_site_option('pgcfw_shared_secret');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('pgcfw_check_coinify_payment_intent');

