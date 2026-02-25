<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('salsapress_caches');
delete_site_option('salsapress_caches');
delete_option('salsapress_options');
delete_site_option('salsapress_options');
delete_option('my_theme_options');
delete_site_option('my_theme_options');

