<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_polopagpayments_geteway_settings');
delete_site_option('woocommerce_polopagpayments_geteway_settings');
delete_option('polopagpayments_last_check');
delete_site_option('polopagpayments_last_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('polopagpayments_schedule_api');
wp_clear_scheduled_hook('polopagpayments_schedule');

