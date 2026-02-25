<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('retentionfox_settings');
delete_site_option('retentionfox_settings');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('retentionfox_unsubs');
delete_site_option('retentionfox_unsubs');

// Clear Cron Jobs
wp_clear_scheduled_hook('retentionfox_send_abandoned_carts');
wp_clear_scheduled_hook('retentionfox_send_abandoned_emails');

