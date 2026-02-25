<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('analytics-integrator-google-analytics-id');
delete_site_option('analytics-integrator-google-analytics-id');
delete_option('analytics-integrator-fullstory-id');
delete_site_option('analytics-integrator-fullstory-id');
delete_option('analytics-integrator-hotjar-id');
delete_site_option('analytics-integrator-hotjar-id');
delete_option('analytics-integrator-mouseflow-id');
delete_site_option('analytics-integrator-mouseflow-id');
delete_option('analytics-integrator-smartlook-id');
delete_site_option('analytics-integrator-smartlook-id');

