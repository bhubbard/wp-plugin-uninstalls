<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lazy_load_responsive_images_disabled_classes');
delete_site_option('lazy_load_responsive_images_disabled_classes');
delete_option('lazy_load_responsive_images_additional_filters');
delete_site_option('lazy_load_responsive_images_additional_filters');
delete_option('lazy_load_responsive_images_enable_for_iframes');
delete_site_option('lazy_load_responsive_images_enable_for_iframes');
delete_option('lazy_load_responsive_images_native_loading_plugin');
delete_site_option('lazy_load_responsive_images_native_loading_plugin');
delete_option('lazy_load_responsive_images_unveilhooks_plugin');
delete_site_option('lazy_load_responsive_images_unveilhooks_plugin');
delete_option('lazy_load_responsive_images_enable_for_background_images');
delete_site_option('lazy_load_responsive_images_enable_for_background_images');
delete_option('lazy_load_responsive_images_enable_for_videos');
delete_site_option('lazy_load_responsive_images_enable_for_videos');
delete_option('lazy_load_responsive_images_enable_for_audios');
delete_site_option('lazy_load_responsive_images_enable_for_audios');
delete_option('lazy_load_responsive_images_loading_spinner');
delete_site_option('lazy_load_responsive_images_loading_spinner');
delete_option('lazy_load_responsive_images_loading_spinner_color');
delete_site_option('lazy_load_responsive_images_loading_spinner_color');
delete_option('lazy_load_responsive_images_granular_disable_option');
delete_site_option('lazy_load_responsive_images_granular_disable_option');
delete_option('lazy_load_responsive_images_process_complete_markup');
delete_site_option('lazy_load_responsive_images_process_complete_markup');
delete_option('lazy_load_responsive_images_lazysizes_config');
delete_site_option('lazy_load_responsive_images_lazysizes_config');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lazy_load_responsive_images_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lazy_load_responsive_images_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lazy_load_responsive_images_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lazy_load_responsive_images_disabled' ) );

