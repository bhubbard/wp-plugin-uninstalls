<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vertical_thumbnail_slider_settings');
delete_site_option('vertical_thumbnail_slider_settings');
delete_option('vertical_thumbnail_slider_messages');
delete_site_option('vertical_thumbnail_slider_messages');

