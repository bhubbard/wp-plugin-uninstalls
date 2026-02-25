<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wps_google_analytic_position');
delete_site_option('wps_google_analytic_position');
delete_option('wps_google_analytic_code');
delete_site_option('wps_google_analytic_code');

