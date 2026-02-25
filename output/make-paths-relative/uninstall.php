<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('make_paths_relative_settings');
delete_site_option('make_paths_relative_settings');
delete_option('make_paths_relative');
delete_site_option('make_paths_relative');
delete_option('make_paths_relative_exclude');
delete_site_option('make_paths_relative_exclude');

