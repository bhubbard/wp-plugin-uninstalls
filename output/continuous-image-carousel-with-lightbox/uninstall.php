<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('continuous_thumbnail_slider_plus_lightbox_settings');
delete_site_option('continuous_thumbnail_slider_plus_lightbox_settings');
delete_option('continuous_thumbnail_slider_plus_lightbox_messages');
delete_site_option('continuous_thumbnail_slider_plus_lightbox_messages');

