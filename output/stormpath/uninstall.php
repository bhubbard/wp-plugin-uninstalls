<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stormpath_client_apikey_properties');
delete_site_option('stormpath_client_apikey_properties');
delete_option('stormpath_client_apikey_id');
delete_site_option('stormpath_client_apikey_id');
delete_option('stormpath_client_apikey_secret');
delete_site_option('stormpath_client_apikey_secret');
delete_option('stormpath_application');
delete_site_option('stormpath_application');
delete_option('stormpath_client_apikey_file');
delete_site_option('stormpath_client_apikey_file');

