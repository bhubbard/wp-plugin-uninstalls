<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('aodroost_default_out_of_stock_free');
delete_site_option('aodroost_default_out_of_stock_free');
delete_option('aodroost_default_low_stock_free');
delete_site_option('aodroost_default_low_stock_free');
delete_option('aodroost_default_in_stock_free');
delete_site_option('aodroost_default_in_stock_free');

