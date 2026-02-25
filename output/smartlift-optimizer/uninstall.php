<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartlift_cache_enable');
delete_site_option('smartlift_cache_enable');
delete_option('smartlift_webp_enable');
delete_site_option('smartlift_webp_enable');
delete_option('smartlift_lazy_enable');
delete_site_option('smartlift_lazy_enable');
delete_option('smartlift_defer_js');
delete_site_option('smartlift_defer_js');
delete_option('smartlift_minify_html');
delete_site_option('smartlift_minify_html');

