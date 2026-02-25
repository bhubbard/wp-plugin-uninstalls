<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_compiler_sources');
delete_site_option('wp_compiler_sources');
delete_option('WP_Compiler_Options');
delete_site_option('WP_Compiler_Options');

