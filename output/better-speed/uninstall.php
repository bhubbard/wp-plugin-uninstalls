<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('better_speed_plugin_loaded');
delete_site_option('better_speed_plugin_loaded');
delete_option('better_speed_setup_theme');
delete_site_option('better_speed_setup_theme');
delete_option('better-speed-settings');
delete_site_option('better-speed-settings');

