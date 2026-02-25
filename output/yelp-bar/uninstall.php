<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('themeforce_yelpbar_options');
delete_site_option('themeforce_yelpbar_options');
delete_option('themeforce_yelpbar_json');
delete_site_option('themeforce_yelpbar_json');

// Delete Transients
delete_transient('themeforce_yelpbar_json');
delete_site_transient('themeforce_yelpbar_json');

