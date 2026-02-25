<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uploadmate_enable_uploads');
delete_site_option('uploadmate_enable_uploads');
delete_option('uploadmate_max_file_size');
delete_site_option('uploadmate_max_file_size');
delete_option('uploadmate_upload_label');
delete_site_option('uploadmate_upload_label');
delete_option('uploadmate_settings');
delete_site_option('uploadmate_settings');
delete_option('uploadmate_activated_at');
delete_site_option('uploadmate_activated_at');

