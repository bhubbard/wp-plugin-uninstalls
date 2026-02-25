<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_theme_exporter_settings');
delete_site_option('wp_theme_exporter_settings');
delete_option('wp_theme_exporter_list');
delete_site_option('wp_theme_exporter_list');

