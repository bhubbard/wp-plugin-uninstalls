<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('roam_update_token');
delete_site_option('roam_update_token');
delete_option('roam_graph_content');
delete_site_option('roam_graph_content');
delete_option('roam_graph_name');
delete_site_option('roam_graph_name');
delete_option('roam_graph_update');
delete_site_option('roam_graph_update');

