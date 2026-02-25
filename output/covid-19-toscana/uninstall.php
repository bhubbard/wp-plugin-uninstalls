<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dataset_url');
delete_site_option('dataset_url');
delete_option('graph_options');
delete_site_option('graph_options');
delete_option('provence_colors');
delete_site_option('provence_colors');

