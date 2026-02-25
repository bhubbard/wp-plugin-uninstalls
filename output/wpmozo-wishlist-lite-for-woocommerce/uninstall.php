<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmozo_wishlist_lite_activated');
delete_site_option('wpmozo_wishlist_lite_activated');
delete_option('wpmozo_transfer_cookies_products');
delete_site_option('wpmozo_transfer_cookies_products');

