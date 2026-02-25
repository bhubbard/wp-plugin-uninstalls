<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fems_options');
delete_site_option('fems_options');
delete_option('FireEMS');
delete_site_option('FireEMS');
delete_option('fireEMS');
delete_site_option('fireEMS');
delete_option('fems_license_key');
delete_site_option('fems_license_key');

