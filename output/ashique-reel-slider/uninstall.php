<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprs_post_type');
delete_site_option('wprs_post_type');
delete_option('wprs_post_title');
delete_site_option('wprs_post_title');
delete_option('wprs_post_featured_iamge_size');
delete_site_option('wprs_post_featured_iamge_size');
delete_option('wprs_image_number');
delete_site_option('wprs_image_number');

