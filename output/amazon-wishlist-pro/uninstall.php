<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Amazon-wishlist-pro-listID');
delete_site_option('Amazon-wishlist-pro-listID');
delete_option('Amazon-wishlist-pro-sort-order');
delete_site_option('Amazon-wishlist-pro-sort-order');
delete_option('Amazon-wishlist-pro-websites');
delete_site_option('Amazon-wishlist-pro-websites');
delete_option('Amazon-wishlist-pro-use-cache');
delete_site_option('Amazon-wishlist-pro-use-cache');
delete_option('Amazon-wishlist-pro-invalidate-cache');
delete_site_option('Amazon-wishlist-pro-invalidate-cache');
delete_option('Amazon-wishlist-pro-layout');
delete_site_option('Amazon-wishlist-pro-layout');
delete_option('Amazon-wishlist-pro-use-unsorted-list');
delete_site_option('Amazon-wishlist-pro-use-unsorted-list');

