<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_quadpay_settings');
delete_site_option('woocommerce_quadpay_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('quadpay_thirty_minutes_cron_jobs');
wp_clear_scheduled_hook('quadpay_forty_five_minutes_cron_jobs');
wp_clear_scheduled_hook('quadpay_four_times_daily_cron_jobs');
wp_clear_scheduled_hook('quadpay_do_cron_jobs');

