<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pfbt_order_statuses');
delete_site_option('pfbt_order_statuses');

// Clear Cron Jobs
wp_clear_scheduled_hook('pisol_pfbt_process_orders_batch_hook');

