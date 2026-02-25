<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ng_slider_theme');
delete_site_option('ng_slider_theme');
delete_option('ng_slider_display_content');
delete_site_option('ng_slider_display_content');
delete_option('ng_slider_image_width');
delete_site_option('ng_slider_image_width');
delete_option('ng_slider_text_width');
delete_site_option('ng_slider_text_width');
delete_option('ng_slider_slideshow_speed');
delete_site_option('ng_slider_slideshow_speed');
delete_option('ng_slider_order');
delete_site_option('ng_slider_order');
delete_option('ng_slider_use_width_for_img_slider');
delete_site_option('ng_slider_use_width_for_img_slider');
delete_option('ng_slider_disable_img_stretching');
delete_site_option('ng_slider_disable_img_stretching');
delete_option('ng_slider_link_title');
delete_site_option('ng_slider_link_title');
delete_option('ng_slider_link_image');
delete_site_option('ng_slider_link_image');
delete_option('ng_slider_link_new_window');
delete_site_option('ng_slider_link_new_window');
delete_option('ng_slider_direction_nav');
delete_site_option('ng_slider_direction_nav');
delete_option('ng_slider_pagination');
delete_site_option('ng_slider_pagination');
delete_option('ng_slider_background');
delete_site_option('ng_slider_background');
delete_option('ng_slider_image_height');
delete_site_option('ng_slider_image_height');
delete_option('ng_slider_animation');
delete_site_option('ng_slider_animation');
delete_option('ng_slider_direction');
delete_site_option('ng_slider_direction');
delete_option('ng_slider_options');
delete_site_option('ng_slider_options');
delete_option('ng_slider_us_width_for_img_slider');
delete_site_option('ng_slider_us_width_for_img_slider');

