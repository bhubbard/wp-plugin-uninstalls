<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_phone_is_registered_1.7.0');
delete_site_option('wp_phone_is_registered_1.7.0');
delete_option('wp_phone_registration_data');
delete_site_option('wp_phone_registration_data');
delete_option('user_personal_number');
delete_site_option('user_personal_number');
delete_option('wp_click_to_call_element');
delete_site_option('wp_click_to_call_element');
delete_option('wp_click_to_call_not_supported');
delete_site_option('wp_click_to_call_not_supported');
delete_option('wp_click_to_call_color_theme');
delete_site_option('wp_click_to_call_color_theme');
delete_option('wp_phone_number');
delete_site_option('wp_phone_number');
delete_option('wp_phone_clicktocall');
delete_site_option('wp_phone_clicktocall');

