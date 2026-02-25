<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_bookings_approval_overbooking');
delete_site_option('dbem_bookings_approval_overbooking');

