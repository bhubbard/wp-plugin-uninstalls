<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mchl_optimizely_data');
delete_site_option('mchl_optimizely_data');
delete_option('mchl_optimizely_project_id');
delete_site_option('mchl_optimizely_project_id');
delete_option('mchl_optimizely_saveadmin_data');
delete_site_option('mchl_optimizely_saveadmin_data');

