<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slsh_header_shrink_height');
delete_site_option('slsh_header_shrink_height');
delete_option('slsh_animation_duration');
delete_site_option('slsh_animation_duration');
delete_option('slsh_heigth_header');
delete_site_option('slsh_heigth_header');
delete_option('slsh_logo_in_header_shrink_height');
delete_site_option('slsh_logo_in_header_shrink_height');
delete_option('slsh_logo_in_header_shrink_left');
delete_site_option('slsh_logo_in_header_shrink_left');
delete_option('slsh_nav_breakpoint');
delete_site_option('slsh_nav_breakpoint');
delete_option('slsh_enable_nav_css');
delete_site_option('slsh_enable_nav_css');
delete_option('slsh_enable_off_canvas');
delete_site_option('slsh_enable_off_canvas');
delete_option('slsh_off_canvas_speed');
delete_site_option('slsh_off_canvas_speed');
delete_option('slsh_enable_background_color');
delete_site_option('slsh_enable_background_color');
delete_option('slsh_hide_header');
delete_site_option('slsh_hide_header');
delete_option('slsh_disable_padding');
delete_site_option('slsh_disable_padding');
delete_option('slsh_enable_text_menu');
delete_site_option('slsh_enable_text_menu');
delete_option('slsh_text_menu');
delete_site_option('slsh_text_menu');
delete_option('slsh_disable_sticky');
delete_site_option('slsh_disable_sticky');

