<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sass_variables_defaults');
delete_site_option('sass_variables_defaults');
delete_option('sass_compiler_cache');
delete_site_option('sass_compiler_cache');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

