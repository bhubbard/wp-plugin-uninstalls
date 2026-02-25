<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsc_color_input_one_text');
delete_site_option('wpsc_color_input_one_text');
delete_option('wpsc_color_input_one_url');
delete_site_option('wpsc_color_input_one_url');
delete_option('wpsc_color_input_one_icon');
delete_site_option('wpsc_color_input_one_icon');
delete_option('wpsc_color_input_two_text');
delete_site_option('wpsc_color_input_two_text');
delete_option('wpsc_color_input_two_url');
delete_site_option('wpsc_color_input_two_url');
delete_option('wpsc_color_input_two_icon');
delete_site_option('wpsc_color_input_two_icon');
delete_option('wpsc_color_input_three_text');
delete_site_option('wpsc_color_input_three_text');
delete_option('wpsc_color_input_three_url');
delete_site_option('wpsc_color_input_three_url');
delete_option('wpsc_color_input_three_icon');
delete_site_option('wpsc_color_input_three_icon');
delete_option('wpsc_color_input_four_text');
delete_site_option('wpsc_color_input_four_text');
delete_option('wpsc_color_input_four_url');
delete_site_option('wpsc_color_input_four_url');
delete_option('wpsc_color_input_four_icon');
delete_site_option('wpsc_color_input_four_icon');
delete_option('wpsc_color_hide_frontend_color_switcher');
delete_site_option('wpsc_color_hide_frontend_color_switcher');
delete_option('wpsc_color_activate_first_color');
delete_site_option('wpsc_color_activate_first_color');
delete_option('wpsc_color_colors');
delete_site_option('wpsc_color_colors');
delete_option('wpsc_color_bg_custom_css');
delete_site_option('wpsc_color_bg_custom_css');
delete_option('wpsc_color_custom_css');
delete_site_option('wpsc_color_custom_css');
delete_option('wpsc_color_custom_css_admin');
delete_site_option('wpsc_color_custom_css_admin');

