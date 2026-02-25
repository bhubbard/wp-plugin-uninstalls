<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcb_version');
delete_site_option('pcb_version');
delete_option('pcb_default_currency');
delete_site_option('pcb_default_currency');
delete_option('pcb_start_hour');
delete_site_option('pcb_start_hour');
delete_option('pcb_end_hour');
delete_site_option('pcb_end_hour');
delete_option('pcb_number_of_courts');
delete_site_option('pcb_number_of_courts');
delete_option('pcb_booking_message');
delete_site_option('pcb_booking_message');

