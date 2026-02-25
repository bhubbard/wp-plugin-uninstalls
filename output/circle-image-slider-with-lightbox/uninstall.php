<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('circle_thumbnail_slider_plus_lightbox_settings');
delete_site_option('circle_thumbnail_slider_plus_lightbox_settings');
delete_option('circle_image_carousel');
delete_site_option('circle_image_carousel');

