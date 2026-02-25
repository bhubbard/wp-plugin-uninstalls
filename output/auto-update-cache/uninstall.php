<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('A_u_cache_options');
delete_site_option('A_u_cache_options');
delete_option('A_u_cache_clear_cache_time');
delete_site_option('A_u_cache_clear_cache_time');

