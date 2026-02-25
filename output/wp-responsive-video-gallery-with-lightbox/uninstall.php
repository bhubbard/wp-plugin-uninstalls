<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('responsive_video_gallery_slider_settings');
delete_site_option('responsive_video_gallery_slider_settings');
delete_option('responsive_video_gallery_plus_lightbox_messages');
delete_site_option('responsive_video_gallery_plus_lightbox_messages');

