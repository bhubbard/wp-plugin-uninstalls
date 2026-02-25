<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('job_manager_enable_types');
delete_site_option('job_manager_enable_types');
delete_option('job_manager_enable_categories');
delete_site_option('job_manager_enable_categories');

