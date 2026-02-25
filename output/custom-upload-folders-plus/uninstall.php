<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwcuf_select');
delete_site_option('jwcuf_select');
delete_option('jwcuf_default_folder_name');
delete_site_option('jwcuf_default_folder_name');
delete_option('jwcuf_file_types');
delete_site_option('jwcuf_file_types');
delete_option('jwcuf_user_folder_name');
delete_site_option('jwcuf_user_folder_name');
delete_option('jwcuf_uploads_use_yearmonth_folders');
delete_site_option('jwcuf_uploads_use_yearmonth_folders');
delete_option('jwcuf_use_blogname_folders');
delete_site_option('jwcuf_use_blogname_folders');

