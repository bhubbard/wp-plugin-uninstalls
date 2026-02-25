<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('http_auth_settings');
delete_site_option('http_auth_settings');
delete_option('http_auth_plugin_version');
delete_site_option('http_auth_plugin_version');

