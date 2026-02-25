<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('minimum_order_amount');
delete_site_option('minimum_order_amount');
delete_option('minimum_order_amount_alert');
delete_site_option('minimum_order_amount_alert');
delete_option('maximum_order_amount');
delete_site_option('maximum_order_amount');
delete_option('maximum_order_amount_alert');
delete_site_option('maximum_order_amount_alert');

