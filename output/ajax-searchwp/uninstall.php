<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajax_searchwp_post_types');
delete_site_option('ajax_searchwp_post_types');
delete_option('ajax_searchwp_search_placeholder');
delete_site_option('ajax_searchwp_search_placeholder');
delete_option('ajax_searchwp_limit');
delete_site_option('ajax_searchwp_limit');
delete_option('ajax_searchwp_no_results_text');
delete_site_option('ajax_searchwp_no_results_text');

