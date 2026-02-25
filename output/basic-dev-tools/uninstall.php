<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic_dev_tools_hide_admin_bar');
delete_site_option('basic_dev_tools_hide_admin_bar');
delete_option('basic_dev_tools_disable_theme_updates');
delete_site_option('basic_dev_tools_disable_theme_updates');
delete_option('basic_dev_tools_disable_plugin_updates');
delete_site_option('basic_dev_tools_disable_plugin_updates');
delete_option('basic_dev_tools_disable_core_updates');
delete_site_option('basic_dev_tools_disable_core_updates');

