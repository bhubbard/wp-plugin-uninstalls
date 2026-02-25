<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getinline_api');
delete_site_option('getinline_api');
delete_option('getinline_project_key');
delete_site_option('getinline_project_key');
delete_option('getinline_project_widget');
delete_site_option('getinline_project_widget');
delete_option('getinline_project_language');
delete_site_option('getinline_project_language');

