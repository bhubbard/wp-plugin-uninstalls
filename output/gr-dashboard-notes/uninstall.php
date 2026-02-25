<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GR_Dashboard_Notes-ID');
delete_site_option('GR_Dashboard_Notes-ID');
delete_option('GR_Dashboard_Notes-1');
delete_site_option('GR_Dashboard_Notes-1');
delete_option('GR_Dashboard_Notes-2');
delete_site_option('GR_Dashboard_Notes-2');
delete_option('GR_Dashboard_Notes-3');
delete_site_option('GR_Dashboard_Notes-3');
delete_option('GR_Dashboard_Notes-4');
delete_site_option('GR_Dashboard_Notes-4');
delete_option('GR_Dashboard_Notes-5');
delete_site_option('GR_Dashboard_Notes-5');
delete_option('GR_Dashboard_Notes-Roles-1');
delete_site_option('GR_Dashboard_Notes-Roles-1');
delete_option('GR_Dashboard_Notes-Roles-2');
delete_site_option('GR_Dashboard_Notes-Roles-2');
delete_option('GR_Dashboard_Notes-Roles-3');
delete_site_option('GR_Dashboard_Notes-Roles-3');
delete_option('GR_Dashboard_Notes-Roles-4');
delete_site_option('GR_Dashboard_Notes-Roles-4');
delete_option('GR_Dashboard_Notes-Roles-5');
delete_site_option('GR_Dashboard_Notes-Roles-5');

