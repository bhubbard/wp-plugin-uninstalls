<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_comments_vip_level_num_1');
delete_site_option('wp_comments_vip_level_num_1');
delete_option('wp_comments_vip_level_num_2');
delete_site_option('wp_comments_vip_level_num_2');
delete_option('wp_comments_vip_level_num_3');
delete_site_option('wp_comments_vip_level_num_3');
delete_option('wp_comments_vip_level_num_4');
delete_site_option('wp_comments_vip_level_num_4');
delete_option('wp_comments_vip_level_num_5');
delete_site_option('wp_comments_vip_level_num_5');
delete_option('wp_comments_vip_level_num_6');
delete_site_option('wp_comments_vip_level_num_6');
delete_option('wp_comments_vip_level_num_7');
delete_site_option('wp_comments_vip_level_num_7');
delete_option('wp_comments_vip_display_admin_vip');
delete_site_option('wp_comments_vip_display_admin_vip');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_comments_vip_level_num_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

