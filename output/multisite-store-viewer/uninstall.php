<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selected_attribute');
delete_site_option('selected_attribute');
delete_option('custom_image_size_width');
delete_site_option('custom_image_size_width');
delete_option('custom_image_size_height');
delete_site_option('custom_image_size_height');
delete_option('default_image');
delete_site_option('default_image');
delete_option('ced_only_logo');
delete_site_option('ced_only_logo');
delete_option('ced_multi_enable_search');
delete_site_option('ced_multi_enable_search');
delete_option('ced_multi_exclude_site');
delete_site_option('ced_multi_exclude_site');
delete_option('site_list_order');
delete_site_option('site_list_order');
delete_option('hidesite');
delete_site_option('hidesite');

