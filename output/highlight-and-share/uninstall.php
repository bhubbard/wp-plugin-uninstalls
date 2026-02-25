<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('has_icons_migrated');
delete_site_option('has_icons_migrated');
delete_option('highlight-and-share');
delete_site_option('highlight-and-share');
delete_option('highlight-and-share-block-editor-options');
delete_site_option('highlight-and-share-block-editor-options');
delete_option('highlight-and-share-email-settings');
delete_site_option('highlight-and-share-email-settings');
delete_option('highlight-and-share-image-options');
delete_site_option('highlight-and-share-image-options');
delete_option('highlight-and-share-theme-options');
delete_site_option('highlight-and-share-theme-options');
delete_option('highlight-and-share-social-networks');
delete_site_option('highlight-and-share-social-networks');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'has_hidden_color_sync_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'has_hidden_color_sync_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'has_hidden_color_sync_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'has_hidden_color_sync_notice' ) );

