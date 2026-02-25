<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdirectory');
delete_site_option('wpdirectory');
delete_option('wp_directory');
delete_site_option('wp_directory');

