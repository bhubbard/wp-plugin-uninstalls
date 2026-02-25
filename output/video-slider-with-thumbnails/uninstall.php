<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vgwt_video_slider_settings');
delete_site_option('vgwt_video_slider_settings');
delete_option('wp_vgallery_thumbnail_msg');
delete_site_option('wp_vgallery_thumbnail_msg');

