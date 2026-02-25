<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enviopack_branch_office');
delete_site_option('enviopack_branch_office');
delete_option('ecom_enviopack_options');
delete_site_option('ecom_enviopack_options');
delete_option('enviopack_api_key');
delete_site_option('enviopack_api_key');
delete_option('enviopack_api_secret');
delete_site_option('enviopack_api_secret');
delete_option('enviopack_packaging_mode');
delete_site_option('enviopack_packaging_mode');
delete_option('enviopack_shipping_mode');
delete_site_option('enviopack_shipping_mode');
delete_option('enviopack_shipping_status');
delete_site_option('enviopack_shipping_status');
delete_option('enviopack_couriers');
delete_site_option('enviopack_couriers');
delete_option('enviopack_address_id');
delete_site_option('enviopack_address_id');
delete_option('enviopack_gmap_key');
delete_site_option('enviopack_gmap_key');
delete_option('enviopack_status_on_processed');
delete_site_option('enviopack_status_on_processed');
delete_option('enviopack_debug');
delete_site_option('enviopack_debug');
delete_option('enviopack_access_token');
delete_site_option('enviopack_access_token');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

