<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gwfc_google_api_key');
delete_site_option('gwfc_google_api_key');
delete_option('google_api_key');
delete_site_option('google_api_key');
delete_option('gwfc_plugin_version');
delete_site_option('gwfc_plugin_version');

