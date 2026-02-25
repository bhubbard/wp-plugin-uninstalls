<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seatext_id');
delete_site_option('seatext_id');
delete_option('seatext_activated');
delete_site_option('seatext_activated');

