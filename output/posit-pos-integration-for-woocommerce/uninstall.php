<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('last_inventory_update');
delete_site_option('last_inventory_update');
delete_option('plz_update_pos_bo_setting');
delete_site_option('plz_update_pos_bo_setting');

// Clear Cron Jobs
wp_clear_scheduled_hook('posit_inventory_cron');
wp_clear_scheduled_hook('email_failed_sales_cron');

