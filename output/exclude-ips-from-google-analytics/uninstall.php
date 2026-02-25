<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evg_analytics_plugin_settings_group_name');
delete_site_option('evg_analytics_plugin_settings_group_name');

