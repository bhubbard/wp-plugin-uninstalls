<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wod_opening_hours_from');
delete_site_option('wod_opening_hours_from');
delete_option('wod_opening_hours_to');
delete_site_option('wod_opening_hours_to');
delete_option('date_range');
delete_site_option('date_range');

