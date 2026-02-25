<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snapcache_object_cache');
delete_site_option('snapcache_object_cache');
delete_option('snapcache_memcached_servers');
delete_site_option('snapcache_memcached_servers');

