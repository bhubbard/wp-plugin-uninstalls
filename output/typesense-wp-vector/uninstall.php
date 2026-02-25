<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tswp_wp_vector_search_options');
delete_site_option('tswp_wp_vector_search_options');

