<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ehive_objects_image_grid_options');
delete_site_option('ehive_objects_image_grid_options');

