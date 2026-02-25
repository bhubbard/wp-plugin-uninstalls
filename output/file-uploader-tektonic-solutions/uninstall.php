<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tektonic_file_upload_options');
delete_site_option('tektonic_file_upload_options');
delete_option('tektonic_file_upload_db_version');
delete_site_option('tektonic_file_upload_db_version');

