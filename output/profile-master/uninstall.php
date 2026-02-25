<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wps_presentation_input_one_text');
delete_site_option('wps_presentation_input_one_text');
delete_option('wps_presentation_input_one_url');
delete_site_option('wps_presentation_input_one_url');
delete_option('wps_presentation_input_two_text');
delete_site_option('wps_presentation_input_two_text');
delete_option('wps_presentation_input_two_url');
delete_site_option('wps_presentation_input_two_url');
delete_option('wps_presentation_input_three_text');
delete_site_option('wps_presentation_input_three_text');
delete_option('wps_presentation_input_three_url');
delete_site_option('wps_presentation_input_three_url');
delete_option('wps_presentation_input_four_text');
delete_site_option('wps_presentation_input_four_text');
delete_option('wps_presentation_input_four_url');
delete_site_option('wps_presentation_input_four_url');
delete_option('wps_presentation_hide_frontend_color_switcher');
delete_site_option('wps_presentation_hide_frontend_color_switcher');
delete_option('wps_presentation_colors');
delete_site_option('wps_presentation_colors');
delete_option('wps_presentation_bg_custom_css');
delete_site_option('wps_presentation_bg_custom_css');
delete_option('wps_presentation_custom_css');
delete_site_option('wps_presentation_custom_css');
delete_option('wps_presentation_live_site_link');
delete_site_option('wps_presentation_live_site_link');
delete_option('wps_presentation_support_link');
delete_site_option('wps_presentation_support_link');
delete_option('wps_presentation_buy_now_link');
delete_site_option('wps_presentation_buy_now_link');

