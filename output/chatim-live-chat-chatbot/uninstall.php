<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatim_widget_project_id');
delete_site_option('chatim_widget_project_id');
delete_option('chatim_widget_project_name');
delete_site_option('chatim_widget_project_name');

