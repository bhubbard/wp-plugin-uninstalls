<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_jeelpay_settings');
delete_site_option('woocommerce_jeelpay_settings');
delete_option('jeelpay_activated_at');
delete_site_option('jeelpay_activated_at');

// Clear Cron Jobs
wp_clear_scheduled_hook('jeelpay_cancel_unpaid_orders');

