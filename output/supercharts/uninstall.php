<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('supercharts_db_version');
delete_site_option('supercharts_db_version');
delete_option('supercharts_license_status');
delete_site_option('supercharts_license_status');
delete_option('supercharts_license_key');
delete_site_option('supercharts_license_key');

