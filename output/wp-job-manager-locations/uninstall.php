<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('job_manager_enable_regions_filter');
delete_site_option('job_manager_enable_regions_filter');
delete_option('resume_manager_enable_regions_filter');
delete_site_option('resume_manager_enable_regions_filter');
delete_option('job_manager_regions_filter');
delete_site_option('job_manager_regions_filter');
delete_option('resume_manager_regions_filter');
delete_site_option('resume_manager_regions_filter');

