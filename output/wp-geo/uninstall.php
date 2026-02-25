<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_geo_show_version_msg');
delete_site_option('wp_geo_show_version_msg');
delete_option('wp_geo_options');
delete_site_option('wp_geo_options');
delete_option('wp_geo_version');
delete_site_option('wp_geo_version');

