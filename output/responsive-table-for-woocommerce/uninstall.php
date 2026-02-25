<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dc_rtfw_activate');
delete_site_option('dc_rtfw_activate');
delete_option('dc_rtfw_activate_cart');
delete_site_option('dc_rtfw_activate_cart');
delete_option('dc_rtfw_activate_wishlist');
delete_site_option('dc_rtfw_activate_wishlist');
delete_option('dc_rtfw_wishlist_page');
delete_site_option('dc_rtfw_wishlist_page');

