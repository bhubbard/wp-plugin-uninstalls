<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('expire_products_hook');
wp_clear_scheduled_hook('notifybefore_hook');
wp_clear_scheduled_hook('notifyafter_hook');
wp_clear_scheduled_hook('deleteproduct_hook');

