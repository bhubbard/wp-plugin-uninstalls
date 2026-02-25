<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csx_enable_comingsoon');
delete_site_option('csx_enable_comingsoon');
delete_option('csx_bg_image_overlay_color');
delete_site_option('csx_bg_image_overlay_color');
delete_option('csx_bg_image_overlay_opacity');
delete_site_option('csx_bg_image_overlay_opacity');
delete_option('csx_colors_button_bg');
delete_site_option('csx_colors_button_bg');
delete_option('csx_colors_button_bg_hover');
delete_site_option('csx_colors_button_bg_hover');
delete_option('csx_colors_button_text');
delete_site_option('csx_colors_button_text');
delete_option('csx_colors_button_text_hover');
delete_site_option('csx_colors_button_text_hover');
delete_option('csx_colors_widget_heading_text');
delete_site_option('csx_colors_widget_heading_text');
delete_option('csx_colors_widget_text');
delete_site_option('csx_colors_widget_text');
delete_option('csx_colors_links');
delete_site_option('csx_colors_links');
delete_option('csx_colors_links_hover');
delete_site_option('csx_colors_links_hover');
delete_option('csx_show_bg_image');
delete_site_option('csx_show_bg_image');
delete_option('csx_bg_image');
delete_site_option('csx_bg_image');
delete_option('csx_show_bigtitle');
delete_site_option('csx_show_bigtitle');
delete_option('csx_show_headline');
delete_site_option('csx_show_headline');
delete_option('csx_show_description');
delete_site_option('csx_show_description');
delete_option('csx_preview_comingsoonpage');
delete_site_option('csx_preview_comingsoonpage');
delete_option('csx_bg_image_position_x');
delete_site_option('csx_bg_image_position_x');
delete_option('csx_bg_image_position_y');
delete_site_option('csx_bg_image_position_y');
delete_option('csx_colors_bigtitle');
delete_site_option('csx_colors_bigtitle');
delete_option('csx_colors_headline');
delete_site_option('csx_colors_headline');
delete_option('csx_colors_description');
delete_site_option('csx_colors_description');
delete_option('csx_custom_css_content');
delete_site_option('csx_custom_css_content');

