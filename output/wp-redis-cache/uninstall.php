<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajc_exceptions');
delete_site_option('ajc_exceptions');
delete_option('minify_enabled_check');
delete_site_option('minify_enabled_check');
delete_option('minify_css_on');
delete_site_option('minify_css_on');
delete_option('head_detect');
delete_site_option('head_detect');
delete_option('foot_detect');
delete_site_option('foot_detect');
delete_option('css_load_type');
delete_site_option('css_load_type');
delete_option('css_minify');
delete_site_option('css_minify');
delete_option('cssminify_enabled');
delete_site_option('cssminify_enabled');
delete_option('rediscache_enabled');
delete_site_option('rediscache_enabled');
delete_option('rediscache_server');
delete_site_option('rediscache_server');
delete_option('rediscache_port');
delete_site_option('rediscache_port');
delete_option('rediscache_pass');
delete_site_option('rediscache_pass');
delete_option('rediscache_database');
delete_site_option('rediscache_database');
delete_option('rediscache_ttl');
delete_site_option('rediscache_ttl');

