<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faturatik_trigger_status');
delete_site_option('faturatik_trigger_status');
delete_option('faturatik_enable_debug');
delete_site_option('faturatik_enable_debug');
delete_option('faturatik_webhook_secret');
delete_site_option('faturatik_webhook_secret');
delete_option('faturatik_api_token');
delete_site_option('faturatik_api_token');
delete_option('faturatik_email_invoice_info');
delete_site_option('faturatik_email_invoice_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('faturatik_retry_failed_orders');
wp_clear_scheduled_hook('faturatik_retry_order');
wp_clear_scheduled_hook('faturatik_retry_single_order');

