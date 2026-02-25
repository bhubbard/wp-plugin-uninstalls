<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('filikod_auto_resize_enabled');
delete_site_option('filikod_auto_resize_enabled');
delete_option('filikod_max_image_width');
delete_site_option('filikod_max_image_width');
delete_option('filikod_auto_alt');
delete_site_option('filikod_auto_alt');
delete_option('filikod_remove_title');
delete_site_option('filikod_remove_title');
delete_option('filikod_clean_alt_special_chars');
delete_site_option('filikod_clean_alt_special_chars');
delete_option('filikod_flush_rewrite_rules');
delete_site_option('filikod_flush_rewrite_rules');
delete_option('filikod_enabled_file_types');
delete_site_option('filikod_enabled_file_types');
delete_option('filikod_total_saved_bytes');
delete_site_option('filikod_total_saved_bytes');

// Delete Transients
delete_transient('filikod_alt_audit');
delete_site_transient('filikod_alt_audit');

// Clear Cron Jobs
wp_clear_scheduled_hook('filikod_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'filikod_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'filikod_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'filikod_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'filikod_' ) );

