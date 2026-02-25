<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbase_cache_options');
delete_site_option('wpbase_cache_options');
delete_option('wpbase_req_cache_new');
delete_site_option('wpbase_req_cache_new');
delete_option('wpbase_check_site');
delete_site_option('wpbase_check_site');

