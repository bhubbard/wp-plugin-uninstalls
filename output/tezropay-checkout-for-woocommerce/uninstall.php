<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_tezropay_checkout_gateway_settings');
delete_site_option('woocommerce_tezropay_checkout_gateway_settings');
delete_option('tezropay_wc_checkout_db1');
delete_site_option('tezropay_wc_checkout_db1');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

