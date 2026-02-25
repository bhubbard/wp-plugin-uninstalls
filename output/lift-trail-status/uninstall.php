<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lift_trail_status_data_date');
delete_site_option('lift_trail_status_data_date');

// Delete Transients
delete_transient('mwps_installing');
delete_site_transient('mwps_installing');

