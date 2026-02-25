<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pause_shop_periodicity');
delete_site_option('pause_shop_periodicity');
delete_option('pause_shop_begin_date');
delete_site_option('pause_shop_begin_date');
delete_option('pause_shop_timezone');
delete_site_option('pause_shop_timezone');
delete_option('pause_shop_scheduled_pause_enabled');
delete_site_option('pause_shop_scheduled_pause_enabled');
delete_option('pause_shop_begin_time');
delete_site_option('pause_shop_begin_time');
delete_option('pause_shop_end_time');
delete_site_option('pause_shop_end_time');
delete_option('pause_shop_on_demand_paused');
delete_site_option('pause_shop_on_demand_paused');
delete_option('pause_shop_schedule_paused');
delete_site_option('pause_shop_schedule_paused');

