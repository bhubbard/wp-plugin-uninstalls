<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_scintg_plugin_meta_settings');
delete_site_option('wp_scintg_plugin_meta_settings');
delete_option('wp_scintg_plugin_home_feed_settings');
delete_site_option('wp_scintg_plugin_home_feed_settings');

