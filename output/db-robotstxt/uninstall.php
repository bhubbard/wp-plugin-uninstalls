<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bisteinoff_plugin_robots_custom');
delete_site_option('bisteinoff_plugin_robots_custom');
delete_option('bisteinoff_plugin_robots_custom_google');
delete_site_option('bisteinoff_plugin_robots_custom_google');
delete_option('bisteinoff_plugin_robots_enable_yandex');
delete_site_option('bisteinoff_plugin_robots_enable_yandex');
delete_option('bisteinoff_plugin_robots_custom_yandex');
delete_site_option('bisteinoff_plugin_robots_custom_yandex');
delete_option('bisteinoff_plugin_robots_custom_other');
delete_site_option('bisteinoff_plugin_robots_custom_other');

