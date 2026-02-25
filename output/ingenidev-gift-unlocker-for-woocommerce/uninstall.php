<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ingenidev_gift_hide_out_of_stock');
delete_site_option('ingenidev_gift_hide_out_of_stock');
delete_option('ingenidev_gift_hide_non_gift_items');
delete_site_option('ingenidev_gift_hide_non_gift_items');
delete_option('ingenidev_gift_products');
delete_site_option('ingenidev_gift_products');

