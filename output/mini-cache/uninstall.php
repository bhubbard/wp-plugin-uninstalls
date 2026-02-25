<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('minicache_enabled');
delete_site_option('minicache_enabled');
delete_option('minicache_ttl');
delete_site_option('minicache_ttl');
delete_option('minicache_store_gzip');
delete_site_option('minicache_store_gzip');
delete_option('minicache_device_bucket');
delete_site_option('minicache_device_bucket');
delete_option('minicache_min_bytes');
delete_site_option('minicache_min_bytes');
delete_option('minicache_ignore_query_keys');
delete_site_option('minicache_ignore_query_keys');
delete_option('minicache_allow_query_keys');
delete_site_option('minicache_allow_query_keys');
delete_option('minicache_lang_cookie_keys');
delete_site_option('minicache_lang_cookie_keys');
delete_option('minicache_bypass_cookie_prefixes');
delete_site_option('minicache_bypass_cookie_prefixes');

