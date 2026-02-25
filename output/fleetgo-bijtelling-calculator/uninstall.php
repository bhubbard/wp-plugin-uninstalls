<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fleetgo_calc_show_powered_by');
delete_site_option('fleetgo_calc_show_powered_by');

