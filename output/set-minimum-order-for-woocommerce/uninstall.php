<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wecreate_minimum_order_value');
delete_site_option('wecreate_minimum_order_value');
delete_option('wecreate_minimum_order_start_date');
delete_site_option('wecreate_minimum_order_start_date');
delete_option('wecreate_minimum_order_end_date');
delete_site_option('wecreate_minimum_order_end_date');
delete_option('wecreate_minimum_order_use_amount');
delete_site_option('wecreate_minimum_order_use_amount');
delete_option('wecreate_minimum_order_checkout_notification');
delete_site_option('wecreate_minimum_order_checkout_notification');

