<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weather_master_view_basic_ds_detail_choice');
delete_site_option('weather_master_view_basic_ds_detail_choice');
delete_option('weather_master_load_basic_ds_city');
delete_site_option('weather_master_load_basic_ds_city');
delete_option('weather_master_load_basic_ds_state');
delete_site_option('weather_master_load_basic_ds_state');
delete_option('weather_master_load_basic_ds_country');
delete_site_option('weather_master_load_basic_ds_country');
delete_option('tsm_quote');
delete_site_option('tsm_quote');

