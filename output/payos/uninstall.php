<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_payos_settings');
delete_site_option('woocommerce_payos_settings');
delete_option('payos_gateway_settings');
delete_site_option('payos_gateway_settings');

