<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stmsb_booking_timezone');
delete_site_option('stmsb_booking_timezone');
delete_option('stmsb_display_date_format');
delete_site_option('stmsb_display_date_format');
delete_option('stmsb_display_time_format');
delete_site_option('stmsb_display_time_format');
delete_option('stmsb_display_rows');
delete_site_option('stmsb_display_rows');
delete_option('stmsb_custom_css');
delete_site_option('stmsb_custom_css');
delete_option('stmsb_db_version');
delete_site_option('stmsb_db_version');
delete_option('stmsb_display_date_Format');
delete_site_option('stmsb_display_date_Format');
delete_option('stmsb_display_time_Format');
delete_site_option('stmsb_display_time_Format');

