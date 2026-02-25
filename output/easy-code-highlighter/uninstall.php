<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('code_highlighter_language');
delete_site_option('code_highlighter_language');
delete_option('code_highlighter_text_copy');
delete_site_option('code_highlighter_text_copy');
delete_option('code_highlighter_text_copied');
delete_site_option('code_highlighter_text_copied');
delete_option('code_highlighter_bg_color');
delete_site_option('code_highlighter_bg_color');
delete_option('code_highlighter_line_color');
delete_site_option('code_highlighter_line_color');
delete_option('code_highlighter_button_color');
delete_site_option('code_highlighter_button_color');
delete_option('code_highlighter_button_border_color');
delete_site_option('code_highlighter_button_border_color');
delete_option('code_highlighter_button_border_thickness');
delete_site_option('code_highlighter_button_border_thickness');
delete_option('code_highlighter_button_font_size');
delete_site_option('code_highlighter_button_font_size');
delete_option('code_highlighter_button_padding_top');
delete_site_option('code_highlighter_button_padding_top');
delete_option('code_highlighter_button_padding_right');
delete_site_option('code_highlighter_button_padding_right');
delete_option('code_highlighter_button_padding_bottom');
delete_site_option('code_highlighter_button_padding_bottom');
delete_option('code_highlighter_button_padding_left');
delete_site_option('code_highlighter_button_padding_left');
delete_option('code_highlighter_button_border');
delete_site_option('code_highlighter_button_border');
delete_option('code_highlighter_button_border_radius');
delete_site_option('code_highlighter_button_border_radius');
delete_option('code_highlighter_button_border_radius_value');
delete_site_option('code_highlighter_button_border_radius_value');

