<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('max_upload_size');
delete_site_option('max_upload_size');
delete_option('min_dpi_size');
delete_site_option('min_dpi_size');
delete_option('max_dpi_size');
delete_site_option('max_dpi_size');
delete_option('dropbox_code');
delete_site_option('dropbox_code');
delete_option('dropbox_token');
delete_site_option('dropbox_token');
delete_option('upload_to_dropbox');
delete_site_option('upload_to_dropbox');
delete_option('dropbox_folder_path');
delete_site_option('dropbox_folder_path');
delete_option('dropbox_user_id');
delete_site_option('dropbox_user_id');
delete_option('upload_space_check_disabled');
delete_site_option('upload_space_check_disabled');

