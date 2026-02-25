<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('wc_fedapay_db_version');
delete_site_option('wc_fedapay_db_version');
delete_option('wc_fedapay_gateway_bootstrap_warning_message');
delete_site_option('wc_fedapay_gateway_bootstrap_warning_message');
delete_option('wc_fedapay_gateway_bootstrap_warning_message_dismissed');
delete_site_option('wc_fedapay_gateway_bootstrap_warning_message_dismissed');

