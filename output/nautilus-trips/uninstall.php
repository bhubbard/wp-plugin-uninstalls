<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nautilus_trips_api_key');
delete_site_option('nautilus_trips_api_key');
delete_option('nautilus_trips_admin_email');
delete_site_option('nautilus_trips_admin_email');
delete_option('nautilus_trips_ships');
delete_site_option('nautilus_trips_ships');
delete_option('nautilus_trips_years');
delete_site_option('nautilus_trips_years');
delete_option('nautilus_trips_months');
delete_site_option('nautilus_trips_months');
delete_option('nautilus_trips_destinations');
delete_site_option('nautilus_trips_destinations');
delete_option('nautilus_trips_page_id');
delete_site_option('nautilus_trips_page_id');

