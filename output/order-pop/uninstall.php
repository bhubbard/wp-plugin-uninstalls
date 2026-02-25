<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('op-plugin');
delete_site_option('op-plugin');

// Delete Transients
delete_transient('order_pop_cached_orders');
delete_site_transient('order_pop_cached_orders');

