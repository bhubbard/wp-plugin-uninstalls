<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ngenius_settings');
delete_site_option('woocommerce_ngenius_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('network_international_ngenius_cron_order_update');

