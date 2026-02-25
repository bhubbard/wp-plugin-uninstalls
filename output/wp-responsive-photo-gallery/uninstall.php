<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_responsive_photo_gallery_slider_settings');
delete_site_option('my_responsive_photo_gallery_slider_settings');
delete_option('my_responsive_photo_gallery_slider_settings_messages');
delete_site_option('my_responsive_photo_gallery_slider_settings_messages');

