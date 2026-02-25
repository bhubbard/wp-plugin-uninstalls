<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('butterfly_button_api_key');
delete_site_option('butterfly_button_api_key');
delete_option('butterfly_button_auto_inject');
delete_site_option('butterfly_button_auto_inject');
delete_option('butterfly_button_display_mode');
delete_site_option('butterfly_button_display_mode');
delete_option('butterfly_button_size');
delete_site_option('butterfly_button_size');
delete_option('butterfly_button_align');
delete_site_option('butterfly_button_align');
delete_option('butterfly_button_horizontal_space');
delete_site_option('butterfly_button_horizontal_space');
delete_option('butterfly_button_vertical_space');
delete_site_option('butterfly_button_vertical_space');
delete_option('butterfly_button_horizontal_unit');
delete_site_option('butterfly_button_horizontal_unit');
delete_option('butterfly_button_vertical_unit');
delete_site_option('butterfly_button_vertical_unit');

