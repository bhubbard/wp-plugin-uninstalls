<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('au_attachment_usage_found');
delete_site_option('au_attachment_usage_found');
delete_option('au_color_status');
delete_site_option('au_color_status');
delete_option('au_auto_sync');
delete_site_option('au_auto_sync');
delete_option('au_filter_by_usage');
delete_site_option('au_filter_by_usage');
delete_option('au_display_usage_listview');
delete_site_option('au_display_usage_listview');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_media_image');
delete_site_option('widget_media_image');
delete_option('widget_media_gallery');
delete_site_option('widget_media_gallery');
delete_option('widget_media_audio');
delete_site_option('widget_media_audio');
delete_option('widget_media_video');
delete_site_option('widget_media_video');
delete_option('au_is_rating_dismissed');
delete_site_option('au_is_rating_dismissed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'au_attachment_item_usage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'au_attachment_item_usage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'au_attachment_item_usage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'au_attachment_item_usage' ) );

