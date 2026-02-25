<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('expedico_carrier_prices');
delete_site_option('expedico_carrier_prices');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');

// Clear Cron Jobs
wp_clear_scheduled_hook('expedico_sync_order_statuses');

