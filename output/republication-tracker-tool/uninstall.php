<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('republication_tracker_tool_default_post_distribution');
delete_site_option('republication_tracker_tool_default_post_distribution');
delete_option('republication_tracker_tool_display_attribution');
delete_site_option('republication_tracker_tool_display_attribution');
delete_option('republication_tracker_tool_default_attachment_distribution');
delete_site_option('republication_tracker_tool_default_attachment_distribution');
delete_option('republication_tracker_tool_media_distribution');
delete_site_option('republication_tracker_tool_media_distribution');
delete_option('republication_tracker_tool_analytics_ga4_id');
delete_site_option('republication_tracker_tool_analytics_ga4_id');
delete_option('republication_tracker_tool_analytics_ga4_secret');
delete_site_option('republication_tracker_tool_analytics_ga4_secret');
delete_option('republication_tracker_additional_tracking_code');
delete_site_option('republication_tracker_additional_tracking_code');
delete_option('republication_tracker_tool_policy');
delete_site_option('republication_tracker_tool_policy');
delete_option('republication_tracker_tool_analytics_id');
delete_site_option('republication_tracker_tool_analytics_id');
delete_option('republication_tracker_tool_license');
delete_site_option('republication_tracker_tool_license');
delete_option('republication_tracker_tool_enable_plain_text');
delete_site_option('republication_tracker_tool_enable_plain_text');
delete_option('parsely');
delete_site_option('parsely');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'republication-tracker-tool-hide-widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'republication-tracker-tool-hide-widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'republication-tracker-tool-hide-widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'republication-tracker-tool-hide-widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'republication_tracker_tool_sharing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'republication_tracker_tool_sharing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'republication_tracker_tool_sharing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'republication_tracker_tool_sharing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'newspack_post_subtitle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'newspack_post_subtitle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'newspack_post_subtitle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'newspack_post_subtitle' ) );

