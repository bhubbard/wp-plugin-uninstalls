<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_voucherly_settings');
delete_site_option('woocommerce_voucherly_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('voucherly_finalize_orders_event');
wp_clear_scheduled_hook('voucherly_update_payment_gateways_event');

