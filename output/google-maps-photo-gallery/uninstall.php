<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('googlemaps_photo_gallery_settings');
delete_site_option('googlemaps_photo_gallery_settings');

