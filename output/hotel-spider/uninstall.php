<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hsbe_hotel_id');
delete_site_option('hsbe_hotel_id');
delete_option('hs_booking_engine');
delete_site_option('hs_booking_engine');

