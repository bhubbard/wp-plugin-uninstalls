<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('api_key');
delete_site_option('api_key');
delete_option('base_currency');
delete_site_option('base_currency');
delete_option('schedule_time');
delete_site_option('schedule_time');
delete_option('exchange_rate_quota');
delete_site_option('exchange_rate_quota');

// Clear Cron Jobs
wp_clear_scheduled_hook('exchange_rate_api_update_currency_rates');

