<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bigapp_special_conf');
delete_site_option('bigapp_special_conf');
delete_option('bigapp_extend_setting');
delete_site_option('bigapp_extend_setting');
delete_option('bigapp_menu_conf');
delete_site_option('bigapp_menu_conf');
delete_option('bigapp_banner_conf');
delete_site_option('bigapp_banner_conf');
delete_option('bigapp_ak_sk');
delete_site_option('bigapp_ak_sk');
delete_option('bigapp_menu_switch');
delete_site_option('bigapp_menu_switch');
delete_option('osop');
delete_site_option('osop');
delete_option('wp_user_avatar_allow_upload');
delete_site_option('wp_user_avatar_allow_upload');
delete_option('gcm_setting');
delete_site_option('gcm_setting');
delete_option('wpfp_options');
delete_site_option('wpfp_options');
delete_option('views_options');
delete_site_option('views_options');
delete_option('wp_user_avatar_upload_size_limit');
delete_site_option('wp_user_avatar_upload_size_limit');
delete_option('wp_user_avatar_resize_upload');
delete_site_option('wp_user_avatar_resize_upload');
delete_option('wp_user_avatar_resize_w');
delete_site_option('wp_user_avatar_resize_w');
delete_option('wp_user_avatar_resize_h');
delete_site_option('wp_user_avatar_resize_h');
delete_option('wp_user_avatar_resize_crop');
delete_site_option('wp_user_avatar_resize_crop');
delete_option('bigapp_json_api_plugin_version');
delete_site_option('bigapp_json_api_plugin_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_wp_user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'description' ) );

