<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_netsmax-gateway-for-woocommerce_settings');
delete_site_option('woocommerce_netsmax-gateway-for-woocommerce_settings');
delete_option('netsmax_gateway_for_woocommerce_version');
delete_site_option('netsmax_gateway_for_woocommerce_version');
delete_option('netsmax_gateway_for_woocommerce_store_id');
delete_site_option('netsmax_gateway_for_woocommerce_store_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_order_sync_event_netsmax');

