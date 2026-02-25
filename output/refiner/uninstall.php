<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('refiner_project_id');
delete_site_option('refiner_project_id');
delete_option('refiner_identify_users');
delete_site_option('refiner_identify_users');
delete_option('refiner_version');
delete_site_option('refiner_version');

