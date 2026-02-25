<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cache_images');
delete_site_option('cache_images');
delete_option('cache_css');
delete_site_option('cache_css');
delete_option('cache_js');
delete_site_option('cache_js');
delete_option('cache_other');
delete_site_option('cache_other');

