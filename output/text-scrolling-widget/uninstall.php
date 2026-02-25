<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsw_direction');
delete_site_option('tsw_direction');
delete_option('tsw_speed');
delete_site_option('tsw_speed');
delete_option('textscrolling_db_version');
delete_site_option('textscrolling_db_version');

