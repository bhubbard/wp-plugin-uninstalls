<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyresy_reservation_days');
delete_site_option('easyresy_reservation_days');
delete_option('easyresy_reservation_time_slots');
delete_site_option('easyresy_reservation_time_slots');
delete_option('easyresy_reservation_max_people');
delete_site_option('easyresy_reservation_max_people');
delete_option('easyresy_reservation_theme_color');
delete_site_option('easyresy_reservation_theme_color');

