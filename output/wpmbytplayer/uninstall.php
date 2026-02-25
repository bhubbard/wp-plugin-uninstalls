<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice_dismiss' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mbYTPlayer_version');
delete_site_option('mbYTPlayer_version');
delete_option('mbYTPlayer_is_active');
delete_site_option('mbYTPlayer_is_active');
delete_option('mbYTPlayer_video_url');
delete_site_option('mbYTPlayer_video_url');
delete_option('mbYTPlayer_video_page');
delete_site_option('mbYTPlayer_video_page');
delete_option('mbYTPlayer_remember_last_time');
delete_site_option('mbYTPlayer_remember_last_time');
delete_option('mbYTPlayer_init_delay');
delete_site_option('mbYTPlayer_init_delay');
delete_option('mbYTPlayer_price');
delete_site_option('mbYTPlayer_price');
delete_option('mbYTPlayer_Home_is_active');
delete_site_option('mbYTPlayer_Home_is_active');
delete_option('mbYTPlayer_home_video_url');
delete_site_option('mbYTPlayer_home_video_url');
delete_option('mbYTPlayer_home_video_page');
delete_site_option('mbYTPlayer_home_video_page');

