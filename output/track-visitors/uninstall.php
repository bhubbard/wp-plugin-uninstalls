<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvt_visitors_tracker');
delete_site_option('wpvt_visitors_tracker');
delete_option('visitor_tracker_installed');
delete_site_option('visitor_tracker_installed');
delete_option('visitor_tracker_version');
delete_site_option('visitor_tracker_version');

