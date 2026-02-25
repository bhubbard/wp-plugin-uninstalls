<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('r34ecre_days');
delete_site_option('r34ecre_days');
delete_option('r34ecre_max_events');
delete_site_option('r34ecre_max_events');
delete_option('r34ecre_images_all');
delete_site_option('r34ecre_images_all');
delete_option('r34ecre_image_size');
delete_site_option('r34ecre_image_size');
delete_option('r34ecre_venue_link');
delete_site_option('r34ecre_venue_link');

