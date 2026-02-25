<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrkv_nova_api_token');
delete_site_option('mrkv_nova_api_token');
delete_option('mrkv_nova_api_server');
delete_site_option('mrkv_nova_api_server');
delete_option('mrkv_nova_delivery');
delete_site_option('mrkv_nova_delivery');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

