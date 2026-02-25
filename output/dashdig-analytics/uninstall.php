<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashdig_api_key');
delete_site_option('dashdig_api_key');
delete_option('dashdig_enabled');
delete_site_option('dashdig_enabled');
delete_option('dashdig_script_position');
delete_site_option('dashdig_script_position');
delete_option('dashdig_exclude_admins');
delete_site_option('dashdig_exclude_admins');
delete_option('dashdig_tracking_id');
delete_site_option('dashdig_tracking_id');
delete_option('dashdig_tracking_enabled');
delete_site_option('dashdig_tracking_enabled');
delete_option('dashdig_track_admins');
delete_site_option('dashdig_track_admins');
delete_option('dashdig_site_id');
delete_site_option('dashdig_site_id');
delete_option('dashdig_version');
delete_site_option('dashdig_version');

