<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('fizen_payment_methods');
delete_site_option('fizen_payment_methods');

// Clear Cron Jobs
wp_clear_scheduled_hook('fizenpay_check_orders');

