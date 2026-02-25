<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seos_change_site_title_color');
delete_site_option('seos_change_site_title_color');
delete_option('seos_change_color_header_background');
delete_site_option('seos_change_color_header_background');
delete_option('seos_change_color_navigation_background');
delete_site_option('seos_change_color_navigation_background');
delete_option('seos_change_color_body_background');
delete_site_option('seos_change_color_body_background');
delete_option('seos_change_color_main_background');
delete_site_option('seos_change_color_main_background');
delete_option('seos_change_color_sidebar_background');
delete_site_option('seos_change_color_sidebar_background');
delete_option('seos_change_color_footer_background');
delete_site_option('seos_change_color_footer_background');
delete_option('seos_change_color_label_background');
delete_site_option('seos_change_color_label_background');
delete_option('seos_change_color_form_background');
delete_site_option('seos_change_color_form_background');
delete_option('seos_change_color_input_background');
delete_site_option('seos_change_color_input_background');
delete_option('seos_change_color_h_color');
delete_site_option('seos_change_color_h_color');
delete_option('seos_change_color_strong_color');
delete_site_option('seos_change_color_strong_color');

