<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_touch_stylesheet_addon_settings');
delete_site_option('wp_touch_stylesheet_addon_settings');

