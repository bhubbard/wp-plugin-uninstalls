<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_satispay_settings');
delete_site_option('woocommerce_satispay_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_satispay_finalize_orders_event');

