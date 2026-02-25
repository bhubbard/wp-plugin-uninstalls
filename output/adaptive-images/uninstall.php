<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adaptive-images');
delete_site_option('adaptive-images');
delete_option('wprxr_include_paths');
delete_site_option('wprxr_include_paths');
delete_option('wprxr_ai_config');
delete_site_option('wprxr_ai_config');

