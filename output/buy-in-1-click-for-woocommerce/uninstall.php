<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buyin1cl_phone_mask');
delete_site_option('buyin1cl_phone_mask');
delete_option('buyin1cl_button_color');
delete_site_option('buyin1cl_button_color');
delete_option('buyin1cl_button_hover_color');
delete_site_option('buyin1cl_button_hover_color');
delete_option('buyin1cl_button_text');
delete_site_option('buyin1cl_button_text');
delete_option('buyin1cl_border_radius');
delete_site_option('buyin1cl_border_radius');
delete_option('buyin1cl_border_color');
delete_site_option('buyin1cl_border_color');
delete_option('buyin1cl_font_weight');
delete_site_option('buyin1cl_font_weight');
delete_option('buyin1cl_button_font_size');
delete_site_option('buyin1cl_button_font_size');
delete_option('buyin1cl_input_font_size');
delete_site_option('buyin1cl_input_font_size');
delete_option('buyin1cl_button_height');
delete_site_option('buyin1cl_button_height');
delete_option('buyin1cl_button_font_color');
delete_site_option('buyin1cl_button_font_color');

