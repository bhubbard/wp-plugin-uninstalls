<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('woocommerce_copperx_settings');
delete_site_option('woocommerce_copperx_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('copperx_check_orders');

