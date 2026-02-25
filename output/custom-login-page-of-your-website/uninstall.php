<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webclp_background_type');
delete_site_option('webclp_background_type');
delete_option('webclp_background_image');
delete_site_option('webclp_background_image');
delete_option('webclp_gradient_color_1');
delete_site_option('webclp_gradient_color_1');
delete_option('webclp_gradient_color_2');
delete_site_option('webclp_gradient_color_2');
delete_option('webclp_custom_logo');
delete_site_option('webclp_custom_logo');

