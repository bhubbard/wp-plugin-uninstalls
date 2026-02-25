<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csf_demo_mode');
delete_site_option('csf_demo_mode');
delete_option('ss-nano-contact');
delete_site_option('ss-nano-contact');

// Delete Transients
delete_transient('wp_plugin_dependencies_deactivate_plugins');
delete_site_transient('wp_plugin_dependencies_deactivate_plugins');
delete_transient('wp_plugin_dependencies_plugin_data');
delete_site_transient('wp_plugin_dependencies_plugin_data');

