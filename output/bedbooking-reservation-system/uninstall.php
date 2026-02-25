<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bed_booking_access_token');
delete_site_option('bed_booking_access_token');

// Delete Transients
delete_transient('bed_booking_calendar_id');
delete_site_transient('bed_booking_calendar_id');
delete_transient('bed_booking_user');
delete_site_transient('bed_booking_user');
delete_transient('bed_booking_object');
delete_site_transient('bed_booking_object');
delete_transient('bed_booking_widget_settings');
delete_site_transient('bed_booking_widget_settings');
delete_transient('bed_booking_license');
delete_site_transient('bed_booking_license');
delete_transient('bed_booking_rooms');
delete_site_transient('bed_booking_rooms');

