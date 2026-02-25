<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpofw_settings');
delete_site_option('cpofw_settings');
delete_option('cpofw_plugin_version');
delete_site_option('cpofw_plugin_version');
delete_option('cpofw_database_version');
delete_site_option('cpofw_database_version');

// Delete Transients
delete_transient('cpofw_installing');
delete_site_transient('cpofw_installing');

