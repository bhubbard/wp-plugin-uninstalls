<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpss_stw_access');
delete_site_option('wpss_stw_access');
delete_option('wpss_stw_secret');
delete_site_option('wpss_stw_secret');
delete_option('wpss_projects_title');
delete_site_option('wpss_projects_title');
delete_option('wpss_show_platforms');
delete_site_option('wpss_show_platforms');

