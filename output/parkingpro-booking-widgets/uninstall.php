<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parkingpro_booking_widgets_filter_services');
delete_site_option('parkingpro_booking_widgets_filter_services');
delete_option('parkingpro_booking_widgets_myparkingpro_url');
delete_site_option('parkingpro_booking_widgets_myparkingpro_url');
delete_option('parkingpro_booking_widgets_remember_widget_fields');
delete_site_option('parkingpro_booking_widgets_remember_widget_fields');
delete_option('parkingpro_booking_widgets_affiliate_tracking');
delete_site_option('parkingpro_booking_widgets_affiliate_tracking');
delete_option('parkingpro_booking_widgets_culture');
delete_site_option('parkingpro_booking_widgets_culture');
delete_option('parkingpro_booking_widgets_google_analytics_id');
delete_site_option('parkingpro_booking_widgets_google_analytics_id');

