<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liverecover_connected_dismissed');
delete_site_option('liverecover_connected_dismissed');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

