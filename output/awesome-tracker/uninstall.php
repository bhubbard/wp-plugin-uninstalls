<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awesome_tracker_version');
delete_site_option('awesome_tracker_version');
delete_option('at_routes');
delete_site_option('at_routes');

