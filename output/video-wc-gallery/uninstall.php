<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vwg_settings_group');
delete_site_option('vwg_settings_group');
delete_option('vwg_uninstall_settings_group');
delete_site_option('vwg_uninstall_settings_group');
delete_option('vwg_settings_icon');
delete_site_option('vwg_settings_icon');
delete_option('vwg_settings_custom_svg_icon');
delete_site_option('vwg_settings_custom_svg_icon');
delete_option('vwg_settings_icon_color');
delete_site_option('vwg_settings_icon_color');
delete_option('vwg_settings_video_controls');
delete_site_option('vwg_settings_video_controls');
delete_option('vwg_settings_loop');
delete_site_option('vwg_settings_loop');
delete_option('vwg_settings_muted');
delete_site_option('vwg_settings_muted');
delete_option('vwg_settings_autoplay');
delete_site_option('vwg_settings_autoplay');
delete_option('vwg_settings_show_first');
delete_site_option('vwg_settings_show_first');
delete_option('vwg_settings_video_adapt_sizes');
delete_site_option('vwg_settings_video_adapt_sizes');
delete_option('vwg_settings_optimized_thumbnails');
delete_site_option('vwg_settings_optimized_thumbnails');
delete_option('vwg_settings_convert_on_upload');
delete_site_option('vwg_settings_convert_on_upload');
delete_option('vwg_settings_remove_settings_data');
delete_site_option('vwg_settings_remove_settings_data');
delete_option('vwg_settings_remove_videos_data');
delete_site_option('vwg_settings_remove_videos_data');
delete_option('vwg_pro_settings');
delete_site_option('vwg_pro_settings');
delete_option('vwg_monthly_notice_dismissed');
delete_site_option('vwg_monthly_notice_dismissed');
delete_option('abl_vwg_version');
delete_site_option('abl_vwg_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('vwg_monthly_admin_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vwg_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vwg_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vwg_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vwg_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

