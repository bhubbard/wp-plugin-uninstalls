<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sio_api_link');
delete_site_option('sio_api_link');
delete_option('sio_shop_uuid');
delete_site_option('sio_shop_uuid');
delete_option('sio_api_token');
delete_site_option('sio_api_token');
delete_option('sio_api_price');
delete_site_option('sio_api_price');
delete_option('sio_shop_einheit');
delete_site_option('sio_shop_einheit');
delete_option('sio_api_salebutton');
delete_site_option('sio_api_salebutton');
delete_option('sio_api_prgroup');
delete_site_option('sio_api_prgroup');
delete_option('sio_products');
delete_site_option('sio_products');
delete_option('sio_product_uuid');
delete_site_option('sio_product_uuid');

