<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hyperpay_payments_logs');
delete_site_option('hyperpay_payments_logs');
delete_option('hyperpay_payments_available_gateways');
delete_site_option('hyperpay_payments_available_gateways');

// Clear Cron Jobs
wp_clear_scheduled_hook('hyperpay_remove_expired_logs');

