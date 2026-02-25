<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpawg_image_popup_color');
delete_site_option('wpawg_image_popup_color');
delete_option('wpawg_navigation_color');
delete_site_option('wpawg_navigation_color');
delete_option('wpawg_image_popup');
delete_site_option('wpawg_image_popup');
delete_option('wpawg_large_image_width');
delete_site_option('wpawg_large_image_width');
delete_option('wpawg_large_image_height');
delete_site_option('wpawg_large_image_height');
delete_option('wpawg_large_hardcrop');
delete_site_option('wpawg_large_hardcrop');
delete_option('wpawg_thumbnail_image_width');
delete_site_option('wpawg_thumbnail_image_width');
delete_option('wpawg_thumbnail_image_height');
delete_site_option('wpawg_thumbnail_image_height');
delete_option('wpawg_thumbnail_hardcrop');
delete_site_option('wpawg_thumbnail_hardcrop');
delete_option('wpawg_image_zoom');
delete_site_option('wpawg_image_zoom');
delete_option('wpawg_thumbnails');
delete_site_option('wpawg_thumbnails');
delete_option('wpawg_navigation');
delete_site_option('wpawg_navigation');
delete_option('wpawg_autoplay');
delete_site_option('wpawg_autoplay');
delete_option('wpawg_autoplay_speed');
delete_site_option('wpawg_autoplay_speed');
delete_option('wpawg_centermode');
delete_site_option('wpawg_centermode');
delete_option('wpawg_adaptive_height');
delete_site_option('wpawg_adaptive_height');
delete_option('wpawg_rtl');
delete_site_option('wpawg_rtl');

