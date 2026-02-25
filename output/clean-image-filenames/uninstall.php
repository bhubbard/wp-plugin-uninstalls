<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clean_image_filenames_plugin_version');
delete_site_option('clean_image_filenames_plugin_version');
delete_option('clean_image_filenames_mime_types');
delete_site_option('clean_image_filenames_mime_types');

// Delete Transients
delete_transient('_clean_image_filenames_original_filename');
delete_site_transient('_clean_image_filenames_original_filename');

