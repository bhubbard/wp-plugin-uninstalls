<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mouseflow_script');
delete_site_option('mouseflow_script');
delete_option('mouseflow-dashboard');
delete_site_option('mouseflow-dashboard');

