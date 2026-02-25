<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps_gallery_sort');
delete_site_option('ps_gallery_sort');
delete_option('photoshelter_default_width');
delete_site_option('photoshelter_default_width');
delete_option('photoshelter');
delete_site_option('photoshelter');
delete_option('ps_cookies');
delete_site_option('ps_cookies');
delete_option('photoshelter_logged_in');
delete_site_option('photoshelter_logged_in');
delete_option('photoshelter_menu_create');
delete_site_option('photoshelter_menu_create');
delete_option('photoshelter_org');
delete_site_option('photoshelter_org');

