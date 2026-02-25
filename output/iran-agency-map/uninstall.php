<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iran_agency_map_settings');
delete_site_option('iran_agency_map_settings');
delete_option('iran_agency_map_db_version');
delete_site_option('iran_agency_map_db_version');

