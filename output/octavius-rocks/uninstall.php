<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ph_octavius_api_key');
delete_site_option('ph_octavius_api_key');
delete_option('ph_octavius_server');
delete_site_option('ph_octavius_server');
delete_option('octavius_rocks_realtime_breakpoints');
delete_site_option('octavius_rocks_realtime_breakpoints');

