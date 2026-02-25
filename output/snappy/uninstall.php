<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snappy_cache_hits');
delete_site_option('snappy_cache_hits');
delete_option('snappy_cache_misses');
delete_site_option('snappy_cache_misses');
delete_option('snappy_settings');
delete_site_option('snappy_settings');

