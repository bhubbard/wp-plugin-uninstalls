<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_css_js_cache_radio');
delete_site_option('disable_css_js_cache_radio');
delete_option('disable_css_js_exclude_paths');
delete_site_option('disable_css_js_exclude_paths');
delete_option('disable_css_js_cache_method');
delete_site_option('disable_css_js_cache_method');
delete_option('browser_caching_enabled');
delete_site_option('browser_caching_enabled');
delete_option('browser_cache_duration');
delete_site_option('browser_cache_duration');
delete_option('browser_caching_settings_changed');
delete_site_option('browser_caching_settings_changed');

