<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('odl_background_color');
delete_site_option('odl_background_color');
delete_option('odl_title_color');
delete_site_option('odl_title_color');
delete_option('odl_text_color');
delete_site_option('odl_text_color');
delete_option('odl_counter_color');
delete_site_option('odl_counter_color');
delete_option('odl_font_size');
delete_site_option('odl_font_size');
delete_option('odl_oil_remaining');
delete_site_option('odl_oil_remaining');
delete_option('odl_total_world');
delete_site_option('odl_total_world');
delete_option('odl_used_barrels');
delete_site_option('odl_used_barrels');
delete_option('odl_copyright_link');
delete_site_option('odl_copyright_link');
delete_option('odl_widget_background_color');
delete_site_option('odl_widget_background_color');
delete_option('odl_widget_title_color');
delete_site_option('odl_widget_title_color');
delete_option('odl_widget_text_color');
delete_site_option('odl_widget_text_color');
delete_option('odl_widget_font_size');
delete_site_option('odl_widget_font_size');
delete_option('odl_widget_counter_color');
delete_site_option('odl_widget_counter_color');
delete_option('odl_widget_oil_remaining');
delete_site_option('odl_widget_oil_remaining');
delete_option('odl_widget_total_world');
delete_site_option('odl_widget_total_world');
delete_option('odl_widget_used_barrels');
delete_site_option('odl_widget_used_barrels');
delete_option('odl_widget_runs_out');
delete_site_option('odl_widget_runs_out');
delete_option('odl_widget_daily_consumption');
delete_site_option('odl_widget_daily_consumption');
delete_option('odl_runs_out');
delete_site_option('odl_runs_out');
delete_option('odl_daily_consumption');
delete_site_option('odl_daily_consumption');

