<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foodiisi_restaurant_id');
delete_site_option('foodiisi_restaurant_id');
delete_option('foodiisi_reservation_type');
delete_site_option('foodiisi_reservation_type');

