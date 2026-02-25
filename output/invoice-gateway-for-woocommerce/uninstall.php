<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('igfw_installed_by');
delete_site_option('igfw_installed_by');
delete_option('wwp_installed_by');
delete_site_option('wwp_installed_by');
delete_option('woocommerce_igfw_invoice_gateway_settings');
delete_site_option('woocommerce_igfw_invoice_gateway_settings');
delete_option('igfw_enable_purchase_order_number');
delete_site_option('igfw_enable_purchase_order_number');
delete_option('igfw_default_order_status');
delete_site_option('igfw_default_order_status');

