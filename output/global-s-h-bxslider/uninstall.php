<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bxslider_wp_auto_start');
delete_site_option('bxslider_wp_auto_start');
delete_option('bxslider_wp_slide_mode');
delete_site_option('bxslider_wp_slide_mode');
delete_option('bxslider_wp_slide_speed');
delete_site_option('bxslider_wp_slide_speed');
delete_option('bxslider_wp_slide_delay');
delete_site_option('bxslider_wp_slide_delay');
delete_option('bxslider_wp_slide_size');
delete_site_option('bxslider_wp_slide_size');
delete_option('bxslider_wp_slide_infiniteLoop');
delete_site_option('bxslider_wp_slide_infiniteLoop');
delete_option('bxslider_wp_home_image_url1');
delete_site_option('bxslider_wp_home_image_url1');
delete_option('bxslider_wp_home_image_url2');
delete_site_option('bxslider_wp_home_image_url2');
delete_option('bxslider_wp_home_image_url3');
delete_site_option('bxslider_wp_home_image_url3');
delete_option('bxslider_wp_home_image_url4');
delete_site_option('bxslider_wp_home_image_url4');
delete_option('bxslider_wp_slide_javascript');
delete_site_option('bxslider_wp_slide_javascript');
delete_option('bx_wp_btn_num');
delete_site_option('bx_wp_btn_num');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bxslider_wp_home_image_url%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bxslider_wp_dir');
delete_site_option('bxslider_wp_dir');

