<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prism_detached_theme');
delete_site_option('prism_detached_theme');
delete_option('prism_detached_extensions');
delete_site_option('prism_detached_extensions');
delete_option('prism_detached_cache_keys');
delete_site_option('prism_detached_cache_keys');
delete_option('prism-detached-invisibles');
delete_site_option('prism-detached-invisibles');
delete_option('prism-detached-autolinker');
delete_site_option('prism-detached-autolinker');

