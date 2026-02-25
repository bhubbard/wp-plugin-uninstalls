<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('file_upload_types');
delete_site_option('file_upload_types');
delete_option('file_upload_types_multiple_mimes');
delete_site_option('file_upload_types_multiple_mimes');

