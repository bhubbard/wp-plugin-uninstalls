<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sacursor_activate');
delete_site_option('sacursor_activate');
delete_option('sacursor_main_color');
delete_site_option('sacursor_main_color');
delete_option('sacursor_image_activate');
delete_site_option('sacursor_image_activate');
delete_option('sacursor_second_image');
delete_site_option('sacursor_second_image');
delete_option('sacursor_second_opacity_image');
delete_site_option('sacursor_second_opacity_image');
delete_option('sacursor_second_color');
delete_site_option('sacursor_second_color');
delete_option('sacursor_main_width');
delete_site_option('sacursor_main_width');
delete_option('sacursor_main_height');
delete_site_option('sacursor_main_height');
delete_option('sacursor_main_radius');
delete_site_option('sacursor_main_radius');
delete_option('sacursor_main_width_hover');
delete_site_option('sacursor_main_width_hover');
delete_option('sacursor_main_height_hover');
delete_site_option('sacursor_main_height_hover');
delete_option('sacursor_second_width');
delete_site_option('sacursor_second_width');
delete_option('sacursor_second_height');
delete_site_option('sacursor_second_height');
delete_option('sacursor_second_radius');
delete_site_option('sacursor_second_radius');
delete_option('sacursor_main_opacity');
delete_site_option('sacursor_main_opacity');
delete_option('sacursor_href_selectors');
delete_site_option('sacursor_href_selectors');
delete_option('sacursor_second_activate');
delete_site_option('sacursor_second_activate');

