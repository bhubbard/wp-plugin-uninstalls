<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsm_easing_option_duration_settings_field');
delete_site_option('bsm_easing_option_duration_settings_field');
delete_option('bsm_select_gallery_settings_field');
delete_site_option('bsm_select_gallery_settings_field');
delete_option('bsm_animation_settings_field');
delete_site_option('bsm_animation_settings_field');
delete_option('bsm_view_mode_settings_field');
delete_site_option('bsm_view_mode_settings_field');
delete_option('bsm_skin_settings_field');
delete_site_option('bsm_skin_settings_field');
delete_option('bsm_disable_ratio_settings_field');
delete_site_option('bsm_disable_ratio_settings_field');
delete_option('bsm_arrow_nav_settings_field');
delete_site_option('bsm_arrow_nav_settings_field');
delete_option('bsm_thumb_nav_settings_field');
delete_site_option('bsm_thumb_nav_settings_field');
delete_option('bsm_slider_delay_settings_field');
delete_site_option('bsm_slider_delay_settings_field');
delete_option('bsm_notice_get_pro_version_dismissed');
delete_site_option('bsm_notice_get_pro_version_dismissed');
delete_option('bsm_auto_play_settings_field');
delete_site_option('bsm_auto_play_settings_field');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bsm-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bsm-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bsm-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bsm-image-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bsm_selected_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bsm_selected_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bsm_selected_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bsm_selected_gallery' ) );

