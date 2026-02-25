<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_sticky_button_enabled');
delete_site_option('wp_sticky_button_enabled');
delete_option('wp_sticky_button_text');
delete_site_option('wp_sticky_button_text');
delete_option('wp_sticky_button_icon');
delete_site_option('wp_sticky_button_icon');
delete_option('wp_sticky_button_link');
delete_site_option('wp_sticky_button_link');
delete_option('wp_sticky_button_target');
delete_site_option('wp_sticky_button_target');
delete_option('wp_sticky_button_bg_color');
delete_site_option('wp_sticky_button_bg_color');
delete_option('wp_sticky_button_text_color');
delete_site_option('wp_sticky_button_text_color');
delete_option('wp_sticky_button_back_to_top');
delete_site_option('wp_sticky_button_back_to_top');
delete_option('wp_sticky_button_back_icon');
delete_site_option('wp_sticky_button_back_icon');
delete_option('wp_sticky_button_position');
delete_site_option('wp_sticky_button_position');
delete_option('wp_sticky_button_display_behavior');
delete_site_option('wp_sticky_button_display_behavior');
delete_option('wp_sticky_button_combined_layout');
delete_site_option('wp_sticky_button_combined_layout');
delete_option('wp_sticky_button_vertical_order');
delete_site_option('wp_sticky_button_vertical_order');
delete_option('wp_sticky_button_horizontal_order');
delete_site_option('wp_sticky_button_horizontal_order');
delete_option('wp_sticky_button_offset_x');
delete_site_option('wp_sticky_button_offset_x');
delete_option('wp_sticky_button_offset_y');
delete_site_option('wp_sticky_button_offset_y');
delete_option('wp_sticky_button_radius_enabled');
delete_site_option('wp_sticky_button_radius_enabled');
delete_option('wp_sticky_button_radius_value');
delete_site_option('wp_sticky_button_radius_value');

