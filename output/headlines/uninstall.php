<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('use_fileupload');
delete_site_option('use_fileupload');
delete_option('ImageHeadline_options');
delete_site_option('ImageHeadline_options');
delete_option('ImageHeadline_settings');
delete_site_option('ImageHeadline_settings');

