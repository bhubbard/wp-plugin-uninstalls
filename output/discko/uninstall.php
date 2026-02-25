<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('discko_display_mode');
delete_site_option('discko_display_mode');
delete_option('discko_form_url');
delete_site_option('discko_form_url');
delete_option('discko_hover_animation');
delete_site_option('discko_hover_animation');
delete_option('discko_button_size');
delete_site_option('discko_button_size');
delete_option('discko_show_bubble');
delete_site_option('discko_show_bubble');
delete_option('discko_bubble_color');
delete_site_option('discko_bubble_color');
delete_option('discko_hover_text');
delete_site_option('discko_hover_text');
delete_option('discko_custom_icon');
delete_site_option('discko_custom_icon');
delete_option('discko_icon_crop_data');
delete_site_option('discko_icon_crop_data');
delete_option('discko_button_corner');
delete_site_option('discko_button_corner');
delete_option('discko_button_position_bottom');
delete_site_option('discko_button_position_bottom');
delete_option('discko_button_position_right');
delete_site_option('discko_button_position_right');
delete_option('discko_button_position_top');
delete_site_option('discko_button_position_top');
delete_option('discko_button_position_left');
delete_site_option('discko_button_position_left');
delete_option('discko_modal_primary_color');
delete_site_option('discko_modal_primary_color');
delete_option('discko_modal_font_family');
delete_site_option('discko_modal_font_family');
delete_option('discko_modal_desktop_width_value');
delete_site_option('discko_modal_desktop_width_value');
delete_option('discko_modal_desktop_width_unit');
delete_site_option('discko_modal_desktop_width_unit');
delete_option('discko_modal_desktop_height_value');
delete_site_option('discko_modal_desktop_height_value');
delete_option('discko_modal_desktop_height_unit');
delete_site_option('discko_modal_desktop_height_unit');
delete_option('discko_modal_mobile_width_value');
delete_site_option('discko_modal_mobile_width_value');
delete_option('discko_modal_mobile_width_unit');
delete_site_option('discko_modal_mobile_width_unit');
delete_option('discko_modal_mobile_height_value');
delete_site_option('discko_modal_mobile_height_value');
delete_option('discko_modal_mobile_height_unit');
delete_site_option('discko_modal_mobile_height_unit');
delete_option('discko_excluded_pages');
delete_site_option('discko_excluded_pages');
delete_option('discko_excluded_types');
delete_site_option('discko_excluded_types');

