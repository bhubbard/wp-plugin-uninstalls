<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('forvoyez_plugin_activated');
delete_site_option('forvoyez_plugin_activated');
delete_option('forvoyez_plugin_version');
delete_site_option('forvoyez_plugin_version');
delete_option('forvoyez_flush_rewrite_rules');
delete_site_option('forvoyez_flush_rewrite_rules');
delete_option('forvoyez_auto_analyze_enabled');
delete_site_option('forvoyez_auto_analyze_enabled');
delete_option('forvoyez_encrypted_api_key');
delete_site_option('forvoyez_encrypted_api_key');
delete_option('forvoyez_context');
delete_site_option('forvoyez_context');
delete_option('forvoyez_language');
delete_site_option('forvoyez_language');

// Delete Transients
delete_transient('forvoyez_bulk_analyze_images');
delete_site_transient('forvoyez_bulk_analyze_images');
delete_transient('forvoyez_api_check');
delete_site_transient('forvoyez_api_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('forvoyez_analyze_single_image');
wp_clear_scheduled_hook('forvoyez_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_forvoyez_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_forvoyez_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_forvoyez_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_forvoyez_analyzed' ) );

