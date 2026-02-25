<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpnpg_gallery_title_display');
delete_site_option('wpnpg_gallery_title_display');
delete_option('wpnpg_gallery_title');
delete_site_option('wpnpg_gallery_title');
delete_option('wpnpg_auto_play');
delete_site_option('wpnpg_auto_play');
delete_option('wpnpg_animation_type');
delete_site_option('wpnpg_animation_type');
delete_option('wpnpg_control_nav');
delete_site_option('wpnpg_control_nav');
delete_option('wpnpg_pause_hover');
delete_site_option('wpnpg_pause_hover');
delete_option('wpnpg_slide_loop');
delete_site_option('wpnpg_slide_loop');
delete_option('wpnpg_thumbnail_width');
delete_site_option('wpnpg_thumbnail_width');
delete_option('wpnpg_thumbnail_margin');
delete_site_option('wpnpg_thumbnail_margin');
delete_option('WPNPG_Recent_Gallery');
delete_site_option('WPNPG_Recent_Gallery');
delete_option('wpnpg_order');
delete_site_option('wpnpg_order');
delete_option('wpnpg');
delete_site_option('wpnpg');
delete_option('wpnpg_plugin_do_activation_redirect');
delete_site_option('wpnpg_plugin_do_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpnpg_second_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpnpg_second_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpnpg_second_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpnpg_second_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpnpg_third_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpnpg_third_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpnpg_third_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpnpg_third_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpnpg_fourth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpnpg_fourth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpnpg_fourth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpnpg_fourth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpnpg_fifth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpnpg_fifth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpnpg_fifth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpnpg_fifth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpnpg_sixth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpnpg_sixth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpnpg_sixth_iamge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpnpg_sixth_iamge' ) );

