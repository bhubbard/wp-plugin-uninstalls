<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_traffic_counter');
delete_site_option('widget_traffic_counter');
delete_option('wp_wtc_WidgetTitle');
delete_site_option('wp_wtc_WidgetTitle');
delete_option('wp_wtc_WidgetText_Visitors');
delete_site_option('wp_wtc_WidgetText_Visitors');
delete_option('wp_wtc_WidgetText_LastDay');
delete_site_option('wp_wtc_WidgetText_LastDay');
delete_option('wp_wtc_WidgetText_LastWeek');
delete_site_option('wp_wtc_WidgetText_LastWeek');
delete_option('wp_wtc_WidgetText_LastMonth');
delete_site_option('wp_wtc_WidgetText_LastMonth');
delete_option('wp_wtc_WidgetText_Online');
delete_site_option('wp_wtc_WidgetText_Online');
delete_option('wp_wtc_WidgetText_log_opt');
delete_site_option('wp_wtc_WidgetText_log_opt');
delete_option('wp_wtc_WidgetText_bots_filter');
delete_site_option('wp_wtc_WidgetText_bots_filter');
delete_option('wp_wtc_WidgetText_Hits');
delete_site_option('wp_wtc_WidgetText_Hits');
delete_option('wp_wtc_WidgetText_Unique');
delete_site_option('wp_wtc_WidgetText_Unique');
delete_option('wp_wtc_WidgetText_Default_Tab');
delete_site_option('wp_wtc_WidgetText_Default_Tab');
delete_option('wp_wtc_WidgetText_wlink');
delete_site_option('wp_wtc_WidgetText_wlink');

