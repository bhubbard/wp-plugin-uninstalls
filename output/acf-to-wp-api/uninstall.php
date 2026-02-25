<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rest_api_plugin_version');
delete_site_option('rest_api_plugin_version');
delete_option('json_api_plugin_version');
delete_site_option('json_api_plugin_version');

