<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf_edge_cache_input');
delete_site_option('cf_edge_cache_input');
delete_option('cf_edge_cache_options');
delete_site_option('cf_edge_cache_options');

