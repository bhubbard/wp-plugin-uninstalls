<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('2j-photo-gallery');
delete_site_option('2j-photo-gallery');
delete_option('twoj_photo_gallery_BeforeActivator');
delete_site_option('twoj_photo_gallery_BeforeActivator');

