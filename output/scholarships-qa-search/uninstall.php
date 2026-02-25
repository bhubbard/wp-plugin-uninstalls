<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('schoqase_search_options');
delete_site_option('schoqase_search_options');
delete_option('schoqase_tracking_data');
delete_site_option('schoqase_tracking_data');

