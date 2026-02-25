<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trendyol_sync');
delete_site_option('trendyol_sync');
delete_option('trendyol_id');
delete_site_option('trendyol_id');
delete_option('trendyol_api_key');
delete_site_option('trendyol_api_key');
delete_option('trendyol_api_secret');
delete_site_option('trendyol_api_secret');
delete_option('trendyol_order_sync_interval');
delete_site_option('trendyol_order_sync_interval');

// Clear Cron Jobs
wp_clear_scheduled_hook('trendyol_orders_check_event');

