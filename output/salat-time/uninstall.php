<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mst_time_zone');
delete_site_option('mst_time_zone');
delete_option('mst_latitude');
delete_site_option('mst_latitude');
delete_option('mst_longitude');
delete_site_option('mst_longitude');
delete_option('mst_method');
delete_site_option('mst_method');
delete_option('mst_total_days');
delete_site_option('mst_total_days');
delete_option('mst_back_days');
delete_site_option('mst_back_days');
delete_option('ccpo_db_version');
delete_site_option('ccpo_db_version');

