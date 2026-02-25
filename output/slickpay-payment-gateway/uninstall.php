<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_wc_gateway_slickpay_settings');
delete_site_option('woocommerce_wc_gateway_slickpay_settings');
delete_option('wc_slickpay_payment_gateways_version');
delete_site_option('wc_slickpay_payment_gateways_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('slickpay_deposit');
delete_site_transient('slickpay_deposit');
delete_transient('slickpay_today');
delete_site_transient('slickpay_today');
delete_transient('slickpay_remaining');
delete_site_transient('slickpay_remaining');

