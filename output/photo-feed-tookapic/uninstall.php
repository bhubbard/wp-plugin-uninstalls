<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_photos_feed_tookapic_data');
delete_site_option('widget_photos_feed_tookapic_data');
delete_option('widget_photo_feed_tookapic_widget');
delete_site_option('widget_photo_feed_tookapic_widget');

