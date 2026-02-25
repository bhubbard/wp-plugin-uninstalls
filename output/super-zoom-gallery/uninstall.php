<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('superzoomgallery_thumb');
delete_site_option('superzoomgallery_thumb');
delete_option('superzoomgallery_medium');
delete_site_option('superzoomgallery_medium');
delete_option('superzoomgallery_full');
delete_site_option('superzoomgallery_full');
delete_option('superzoomgallery_showcaptions');
delete_site_option('superzoomgallery_showcaptions');
delete_option('superzoomgallery_captionfield');
delete_site_option('superzoomgallery_captionfield');
delete_option('superzoomgallery_overwrite_gallery');
delete_site_option('superzoomgallery_overwrite_gallery');
delete_option('superzoomgallery_innerzoom');
delete_site_option('superzoomgallery_innerzoom');
delete_option('superzoomgallery_usecss3');
delete_site_option('superzoomgallery_usecss3');

