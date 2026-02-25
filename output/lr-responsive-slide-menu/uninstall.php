<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theme_location');
delete_site_option('theme_location');
delete_option('mobile_width');
delete_site_option('mobile_width');
delete_option('menu_id');
delete_site_option('menu_id');
delete_option('menu_background');
delete_site_option('menu_background');
delete_option('menu_background_hover');
delete_site_option('menu_background_hover');
delete_option('menu_item_color');
delete_site_option('menu_item_color');
delete_option('menu_item_color_hover');
delete_site_option('menu_item_color_hover');

