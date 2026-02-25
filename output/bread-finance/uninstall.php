<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bread_auth_token');
delete_site_option('bread_auth_token');
delete_option('pickup_location_pickup_locations');
delete_site_option('pickup_location_pickup_locations');
delete_option('woocommerce_store_phone');
delete_site_option('woocommerce_store_phone');

