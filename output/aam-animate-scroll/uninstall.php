<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aam_scroll_section');
delete_site_option('aam_scroll_section');
delete_option('aam_scroll_text');
delete_site_option('aam_scroll_text');
delete_option('aam_scroll_animation_speed');
delete_site_option('aam_scroll_animation_speed');
delete_option('aam_scroll_style');
delete_site_option('aam_scroll_style');
delete_option('aam_scroll_position');
delete_site_option('aam_scroll_position');
delete_option('aam_scroll_bg_color');
delete_site_option('aam_scroll_bg_color');
delete_option('aam_scroll_font_color');
delete_site_option('aam_scroll_font_color');
delete_option('custom_css');
delete_site_option('custom_css');
delete_option('scroll_icon');
delete_site_option('scroll_icon');
delete_option('aam_scroll_icon_size');
delete_site_option('aam_scroll_icon_size');

