<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image-map-pro-fragmented-saves');
delete_site_option('image-map-pro-fragmented-saves');
delete_option('bea_media_analytics_index');
delete_site_option('bea_media_analytics_index');
delete_option('dnh_dismissed_notices');
delete_site_option('dnh_dismissed_notices');

// Delete Transients
delete_transient('bea_media_analytics_activated_notice');
delete_site_transient('bea_media_analytics_activated_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('bea.media_analytics.cron.force_indexation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dnh_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dnh_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dnh_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dnh_dismissed_notices' ) );

