<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lightpost_api_key');
delete_site_option('lightpost_api_key');
delete_option('lightpost_bible_class_registration_page_id');
delete_site_option('lightpost_bible_class_registration_page_id');
delete_option('lightpost_directory_page_id');
delete_site_option('lightpost_directory_page_id');
delete_option('lightpost_directory_disclaimer');
delete_site_option('lightpost_directory_disclaimer');
delete_option('lightpost_sermon_archive_page_id');
delete_site_option('lightpost_sermon_archive_page_id');
delete_option('lightpost_theme');
delete_site_option('lightpost_theme');

