<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selupload_username');
delete_site_option('selupload_username');
delete_option('selupload_pass');
delete_site_option('selupload_pass');
delete_option('selupload_auth');
delete_site_option('selupload_auth');
delete_option('selupload_container');
delete_site_option('selupload_container');
delete_option('selupload_path_in_storage');
delete_site_option('selupload_path_in_storage');
delete_option('selupload_debug');
delete_site_option('selupload_debug');
delete_option('selupload_lazyuploading');
delete_site_option('selupload_lazyuploading');
delete_option('selupload_notoverewrite');
delete_site_option('selupload_notoverewrite');
delete_option('selupload_delafter');
delete_site_option('selupload_delafter');
delete_option('selupload_filter');
delete_site_option('selupload_filter');
delete_option('selupload_del');
delete_site_option('selupload_del');

// Clear Cron Jobs
wp_clear_scheduled_hook('selupload_scheduleUpload');
wp_clear_scheduled_hook('selupload_delFile');

