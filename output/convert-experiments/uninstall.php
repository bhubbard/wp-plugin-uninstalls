<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('convert_experiments');
delete_site_option('convert_experiments');
delete_option('convert_experiments_project_number');
delete_site_option('convert_experiments_project_number');

