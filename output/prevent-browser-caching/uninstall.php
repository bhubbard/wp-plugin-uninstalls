<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prevent_browser_caching_options');
delete_site_option('prevent_browser_caching_options');
delete_option('prevent_browser_caching_clear_cache_time');
delete_site_option('prevent_browser_caching_clear_cache_time');

