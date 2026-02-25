<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trtwp_reading_per_minute');
delete_site_option('trtwp_reading_per_minute');

