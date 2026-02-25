<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dos_key');
delete_site_option('dos_key');
delete_option('dos_secret');
delete_site_option('dos_secret');
delete_option('dos_endpoint');
delete_site_option('dos_endpoint');
delete_option('dos_container');
delete_site_option('dos_container');
delete_option('dos_storage_path');
delete_site_option('dos_storage_path');
delete_option('dos_storage_file_only');
delete_site_option('dos_storage_file_only');
delete_option('dos_storage_file_delete');
delete_site_option('dos_storage_file_delete');
delete_option('dos_filter');
delete_site_option('dos_filter');

