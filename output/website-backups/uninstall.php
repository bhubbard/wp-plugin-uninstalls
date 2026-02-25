<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ero_website_download_files');
delete_site_option('ero_website_download_files');
delete_option('ero_website_download_db');
delete_site_option('ero_website_download_db');

