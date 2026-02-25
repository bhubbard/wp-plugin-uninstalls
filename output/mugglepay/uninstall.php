<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_mpwp_settings');
delete_site_option('woocommerce_mpwp_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('mpwp_check_orders');

