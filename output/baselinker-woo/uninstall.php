<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flexible_shipping_rates');
delete_site_option('flexible_shipping_rates');
delete_option('wcj_orders_custom_statuses_array');
delete_site_option('wcj_orders_custom_statuses_array');

