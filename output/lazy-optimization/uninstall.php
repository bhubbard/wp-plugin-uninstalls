<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lzyopti_global_images_to_exclude');
delete_site_option('lzyopti_global_images_to_exclude');
delete_option('lzyopti_replace_image');
delete_site_option('lzyopti_replace_image');
delete_option('lzyopti_delete_all_data');
delete_site_option('lzyopti_delete_all_data');
delete_option('lzyopti_already_done_single_css');
delete_site_option('lzyopti_already_done_single_css');
delete_option('autoptimize_css');
delete_site_option('autoptimize_css');

