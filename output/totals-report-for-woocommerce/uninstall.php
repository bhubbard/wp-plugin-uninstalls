<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('trwc_version');
delete_site_option('trwc_version');

