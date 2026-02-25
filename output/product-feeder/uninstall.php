<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product-feeder-product-statuses');
delete_site_option('product-feeder-product-statuses');
delete_option('product-feeder-default-order-status');
delete_site_option('product-feeder-default-order-status');
delete_option('product-feeder-accepted-order-statuses');
delete_site_option('product-feeder-accepted-order-statuses');
delete_option('product-feeder-rejected-order-statuses');
delete_site_option('product-feeder-rejected-order-statuses');
delete_option('product-feeder-shipped-order-statuses');
delete_site_option('product-feeder-shipped-order-statuses');
delete_option('product_feeder_api_key');
delete_site_option('product_feeder_api_key');
delete_option('product-feeder-sizes');
delete_site_option('product-feeder-sizes');
delete_option('product-feeder-brand');
delete_site_option('product-feeder-brand');
delete_option('product-feeder-ean');
delete_site_option('product-feeder-ean');
delete_option('product-feeder-color');
delete_site_option('product-feeder-color');
delete_option('product-feeder-season');
delete_site_option('product-feeder-season');
delete_option('product-feeder-gender');
delete_site_option('product-feeder-gender');
delete_option('product-feeder-material');
delete_site_option('product-feeder-material');
delete_option('product-feeder-condition');
delete_site_option('product-feeder-condition');
delete_option('product-feeder-delivery-terms');
delete_site_option('product-feeder-delivery-terms');

