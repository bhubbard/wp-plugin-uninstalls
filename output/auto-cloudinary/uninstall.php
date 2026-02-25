<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cloudinary_cloud_name');
delete_site_option('cloudinary_cloud_name');
delete_option('cloudinary_auto_mapping_folder');
delete_site_option('cloudinary_auto_mapping_folder');
delete_option('cloudinary_default_hard_crop');
delete_site_option('cloudinary_default_hard_crop');
delete_option('cloudinary_default_soft_crop');
delete_site_option('cloudinary_default_soft_crop');
delete_option('cloudinary_urls');
delete_site_option('cloudinary_urls');
delete_option('cloudinary_content_images');
delete_site_option('cloudinary_content_images');

