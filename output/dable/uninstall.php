<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dable-settings');
delete_site_option('dable-settings');
delete_option('dable-target-post-types');
delete_site_option('dable-target-post-types');
delete_option('dable-og-settings');
delete_site_option('dable-og-settings');
delete_option('dable-widget-settings');
delete_site_option('dable-widget-settings');
delete_option('dable_plugin_version');
delete_site_option('dable_plugin_version');

