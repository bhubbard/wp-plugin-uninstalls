<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('litecache_path');
delete_site_option('litecache_path');
delete_option('litecache_multisite');
delete_site_option('litecache_multisite');
delete_option('litecache_domain');
delete_site_option('litecache_domain');
delete_option('litecache_purge');
delete_site_option('litecache_purge');

