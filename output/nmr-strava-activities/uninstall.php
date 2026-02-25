<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nmr_strava_settings');
delete_site_option('nmr_strava_settings');
delete_option('nmr_strava_activities_db_version');
delete_site_option('nmr_strava_activities_db_version');

