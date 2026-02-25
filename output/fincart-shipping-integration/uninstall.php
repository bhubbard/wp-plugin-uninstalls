<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fincart_use_default_pickup_loc');
delete_site_option('fincart_use_default_pickup_loc');
delete_option('fincart_api_token');
delete_site_option('fincart_api_token');
delete_option('fincart_city_area');
delete_site_option('fincart_city_area');
delete_option('fincart_show_tracking_info_on_frontend');
delete_site_option('fincart_show_tracking_info_on_frontend');
delete_option('fincart_send_orders_automatically');
delete_site_option('fincart_send_orders_automatically');
delete_option('fincart_open_package');
delete_site_option('fincart_open_package');
delete_option('fincart_description_format');
delete_site_option('fincart_description_format');
delete_option('fincart_api_token_validation');
delete_site_option('fincart_api_token_validation');

// Clear Cron Jobs
wp_clear_scheduled_hook('fincart_daily_check_api_token');

