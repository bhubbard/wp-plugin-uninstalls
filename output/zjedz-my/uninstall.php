<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zjedzmy_restaurant_id');
delete_site_option('zjedzmy_restaurant_id');
delete_option('zjedzmy_reservation_type');
delete_site_option('zjedzmy_reservation_type');

