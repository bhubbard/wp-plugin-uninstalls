<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_ninja_show_activation_notice');
delete_site_option('image_ninja_show_activation_notice');
delete_option('image_ninja_images_conversion_type');
delete_site_option('image_ninja_images_conversion_type');
delete_option('image_ninja_images_quality');
delete_site_option('image_ninja_images_quality');

