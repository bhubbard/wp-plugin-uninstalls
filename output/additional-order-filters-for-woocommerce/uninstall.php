<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('woaf_per_column');
delete_site_option('woaf_per_column');
delete_option('ant_additional_order_enabled_filters');
delete_site_option('ant_additional_order_enabled_filters');
delete_option('woaf_custom_filters');
delete_site_option('woaf_custom_filters');

