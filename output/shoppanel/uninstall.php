<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shoppanel_active');
delete_site_option('shoppanel_active');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('shoppanel_default');
delete_site_option('shoppanel_default');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('shoppanel_mapbox_token');
delete_site_option('shoppanel_mapbox_token');

