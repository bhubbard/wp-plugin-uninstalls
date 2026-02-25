<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apiendpoints');
delete_site_option('apiendpoints');
delete_option('rest_cache_time');
delete_site_option('rest_cache_time');
delete_option('rest_cache_datetime');
delete_site_option('rest_cache_datetime');

