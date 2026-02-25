<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('am_sass_path');
delete_site_option('am_sass_path');
delete_option('am_use_compass');
delete_site_option('am_use_compass');
delete_option('am_compass_path');
delete_site_option('am_compass_path');
delete_option('am_coffeescript_path');
delete_site_option('am_coffeescript_path');
delete_option('am_async_flag');
delete_site_option('am_async_flag');
delete_option('am_dev_mode');
delete_site_option('am_dev_mode');
delete_option('am_files_to_exclude');
delete_site_option('am_files_to_exclude');
delete_option('am_compress_styles');
delete_site_option('am_compress_styles');
delete_option('am_compress_scripts');
delete_site_option('am_compress_scripts');
delete_option('am_log');
delete_site_option('am_log');

