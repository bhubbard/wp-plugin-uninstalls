<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s3spaces_key');
delete_site_option('s3spaces_key');
delete_option('s3spaces_secret');
delete_site_option('s3spaces_secret');
delete_option('s3spaces_endpoint');
delete_site_option('s3spaces_endpoint');
delete_option('s3spaces_container');
delete_site_option('s3spaces_container');
delete_option('s3spaces_storage_path');
delete_site_option('s3spaces_storage_path');
delete_option('s3spaces_storage_file_only');
delete_site_option('s3spaces_storage_file_only');
delete_option('s3spaces_storage_file_delete');
delete_site_option('s3spaces_storage_file_delete');
delete_option('s3spaces_filter');
delete_site_option('s3spaces_filter');

