<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_toyyibpay_settings');
delete_site_option('woocommerce_toyyibpay_settings');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');

// Clear Cron Jobs
wp_clear_scheduled_hook('bill_inquiry');

