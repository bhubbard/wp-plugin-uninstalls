<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plerdy_tracking_script');
delete_site_option('plerdy_tracking_script');
delete_option('plerdy_abtracking_script');
delete_site_option('plerdy_abtracking_script');
delete_option('checkbox');
delete_site_option('checkbox');

