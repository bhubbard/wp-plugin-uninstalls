<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('small_image_id');
delete_site_option('small_image_id');
delete_option('medium_image_id');
delete_site_option('medium_image_id');
delete_option('large_image_id');
delete_site_option('large_image_id');

