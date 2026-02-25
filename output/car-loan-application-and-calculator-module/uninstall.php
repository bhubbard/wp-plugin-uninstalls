<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clm_vehicles');
delete_site_option('clm_vehicles');
delete_option('clm_provinces');
delete_site_option('clm_provinces');
delete_option('clm_emails');
delete_site_option('clm_emails');
delete_option('clm_clean_db');
delete_site_option('clm_clean_db');
delete_option('clm_version');
delete_site_option('clm_version');

