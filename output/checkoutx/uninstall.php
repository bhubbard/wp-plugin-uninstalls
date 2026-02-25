<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('checkout_x_shop_id');
delete_site_option('checkout_x_shop_id');
delete_option('checkout_x_storefront_url');
delete_site_option('checkout_x_storefront_url');
delete_option('checkout_x_api_version');
delete_site_option('checkout_x_api_version');
delete_option('checkout_x_app_url');
delete_site_option('checkout_x_app_url');
delete_option('checkout_x_api_url');
delete_site_option('checkout_x_api_url');
delete_option('checkout_x_website_url');
delete_site_option('checkout_x_website_url');
delete_option('checkout_x_event_secret');
delete_site_option('checkout_x_event_secret');

