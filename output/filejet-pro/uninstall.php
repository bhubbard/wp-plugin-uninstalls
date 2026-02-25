<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('filejet_api_key');
delete_site_option('filejet_api_key');
delete_option('filejet_storage_id');
delete_site_option('filejet_storage_id');
delete_option('secret');
delete_site_option('secret');
delete_option('filejet_config');
delete_site_option('filejet_config');
delete_option('filejet_secret');
delete_site_option('filejet_secret');

