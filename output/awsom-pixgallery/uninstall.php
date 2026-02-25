<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awsom_pixgallery_all_images_text');
delete_site_option('awsom_pixgallery_all_images_text');
delete_option('PixGallery');
delete_site_option('PixGallery');
delete_option('awsom_pixgallery_cache_created');
delete_site_option('awsom_pixgallery_cache_created');
delete_option('awsom_pixgallery_default_gallery');
delete_site_option('awsom_pixgallery_default_gallery');
delete_option('awsom_pixgallery_defaultgallery_created');
delete_site_option('awsom_pixgallery_defaultgallery_created');
delete_option('awsom_pixgallery_db_version');
delete_site_option('awsom_pixgallery_db_version');

