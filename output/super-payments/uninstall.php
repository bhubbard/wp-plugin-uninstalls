<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_superpayments_settings');
delete_site_option('woocommerce_superpayments_settings');
delete_option('wcsp_product_ingestion_status');
delete_site_option('wcsp_product_ingestion_status');
delete_option('woocommerce_gateway_order');
delete_site_option('woocommerce_gateway_order');

