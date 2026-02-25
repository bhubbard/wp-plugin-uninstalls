<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scroll_to_top_font_size');
delete_site_option('scroll_to_top_font_size');
delete_option('scroll_to_top_btn_color');
delete_site_option('scroll_to_top_btn_color');
delete_option('scroll_to_top_icon_color');
delete_site_option('scroll_to_top_icon_color');
delete_option('scroll_to_top_hvr_icon_color');
delete_site_option('scroll_to_top_hvr_icon_color');
delete_option('scroll_to_top_hvr_color');
delete_site_option('scroll_to_top_hvr_color');
delete_option('scroll_to_top_speed');
delete_site_option('scroll_to_top_speed');
delete_option('scroll_to_top_icon');
delete_site_option('scroll_to_top_icon');
delete_option('scroll_to_top_value_exclude');
delete_site_option('scroll_to_top_value_exclude');

