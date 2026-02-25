<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('golfhs_settings');
delete_site_option('golfhs_settings');
delete_option('golfhs_db_version');
delete_site_option('golfhs_db_version');
delete_option('golfhs_version');
delete_site_option('golfhs_version');
delete_option('golf_handicap_slope_settings');
delete_site_option('golf_handicap_slope_settings');

