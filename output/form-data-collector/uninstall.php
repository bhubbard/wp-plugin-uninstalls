<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fdc_upload_folder_hash');
delete_site_option('fdc_upload_folder_hash');
delete_option('fdc_db_version');
delete_site_option('fdc_db_version');

