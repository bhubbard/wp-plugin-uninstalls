<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smoobu_properties_list');
delete_site_option('smoobu_properties_list');
delete_option('smoobu_api_key');
delete_site_option('smoobu_api_key');
delete_option('smoobu_custom_styling');
delete_site_option('smoobu_custom_styling');
delete_option('smoobu_calendar_theme');
delete_site_option('smoobu_calendar_theme');
delete_option('smoobu_full_width');
delete_site_option('smoobu_full_width');
delete_option('smoobu_custom_styling_border_shadow');
delete_site_option('smoobu_custom_styling_border_shadow');
delete_option('smoobu_custom_styling_border_radius');
delete_site_option('smoobu_custom_styling_border_radius');
delete_option('smoobu_custom_styling_color_general_bg');
delete_site_option('smoobu_custom_styling_color_general_bg');
delete_option('smoobu_custom_styling_color_header_bg');
delete_site_option('smoobu_custom_styling_color_header_bg');
delete_option('smoobu_custom_styling_color_header');
delete_site_option('smoobu_custom_styling_color_header');
delete_option('smoobu_custom_styling_color_days');
delete_site_option('smoobu_custom_styling_color_days');
delete_option('smoobu_custom_styling_color_regular_bg');
delete_site_option('smoobu_custom_styling_color_regular_bg');
delete_option('smoobu_custom_styling_color_regular');
delete_site_option('smoobu_custom_styling_color_regular');
delete_option('smoobu_custom_styling_color_disabled_bg');
delete_site_option('smoobu_custom_styling_color_disabled_bg');
delete_option('smoobu_custom_styling_color_disabled');
delete_site_option('smoobu_custom_styling_color_disabled');
delete_option('smoobu_custom_styling_color_highlighted_bg');
delete_site_option('smoobu_custom_styling_color_highlighted_bg');
delete_option('smoobu_custom_styling_color_highlighted');
delete_site_option('smoobu_custom_styling_color_highlighted');
delete_option('smoobu_custom_styling_color_hover_bg');
delete_site_option('smoobu_custom_styling_color_hover_bg');
delete_option('smoobu_custom_styling_color_hover');
delete_site_option('smoobu_custom_styling_color_hover');
delete_option('smoobu_custom_styling_color_selected_bg');
delete_site_option('smoobu_custom_styling_color_selected_bg');
delete_option('smoobu_custom_styling_color_selected');
delete_site_option('smoobu_custom_styling_color_selected');

