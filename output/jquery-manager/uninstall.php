<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_jquery_manager_plugin_jquery_settings');
delete_site_option('wp_jquery_manager_plugin_jquery_settings');
delete_option('wp_jquery_manager_plugin_jquery_migrate_settings');
delete_site_option('wp_jquery_manager_plugin_jquery_migrate_settings');
delete_option('external_updates-wp_jquery_manager_plugin');
delete_site_option('external_updates-wp_jquery_manager_plugin');

