<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('back_to_top_background_color');
delete_site_option('back_to_top_background_color');
delete_option('back_to_top_button_color');
delete_site_option('back_to_top_button_color');
delete_option('back_to_top_button_speed');
delete_site_option('back_to_top_button_speed');
delete_option('back_to_top_button_radius');
delete_site_option('back_to_top_button_radius');
delete_option('back_to_top_option_position');
delete_site_option('back_to_top_option_position');
delete_option('back_to_top_button_load1');
delete_site_option('back_to_top_button_load1');
delete_option('back_to_top_button_opacity');
delete_site_option('back_to_top_button_opacity');
delete_option('back_to_top_button_width');
delete_site_option('back_to_top_button_width');
delete_option('back_to_top_button_height');
delete_site_option('back_to_top_button_height');
delete_option('back_to_top_button_font_size');
delete_site_option('back_to_top_button_font_size');
delete_option('back_to_top_button_position_right');
delete_site_option('back_to_top_button_position_right');
delete_option('back_to_top_button_position_left');
delete_site_option('back_to_top_button_position_left');
delete_option('back_to_top_button_position_bottom');
delete_site_option('back_to_top_button_position_bottom');

