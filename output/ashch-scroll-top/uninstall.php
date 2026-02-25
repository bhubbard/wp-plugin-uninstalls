<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scrltop_enable_button');
delete_site_option('scrltop_enable_button');
delete_option('scrltop_button_color');
delete_site_option('scrltop_button_color');
delete_option('scrltop_arrow_color');
delete_site_option('scrltop_arrow_color');
delete_option('scrltop_arrow');
delete_site_option('scrltop_arrow');
delete_option('scrltop_form_button');
delete_site_option('scrltop_form_button');
delete_option('scrltop_start_scrolling');
delete_site_option('scrltop_start_scrolling');
delete_option('scrltop_position_button');
delete_site_option('scrltop_position_button');
delete_option('scrltop_position_button_left');
delete_site_option('scrltop_position_button_left');
delete_option('scrltop_position_button_right');
delete_site_option('scrltop_position_button_right');
delete_option('scrltop_position_button_bottom');
delete_site_option('scrltop_position_button_bottom');

