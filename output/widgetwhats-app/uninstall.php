<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widgetwhatsID');
delete_site_option('widgetwhatsID');
delete_option('widgetwhatsCheckAll');
delete_site_option('widgetwhatsCheckAll');
delete_option('widgetwhatsCheckHomepage');
delete_site_option('widgetwhatsCheckHomepage');
delete_option('widgetwhatsCheckFrontpage');
delete_site_option('widgetwhatsCheckFrontpage');
delete_option('widgetwhatsCheckPosts');
delete_site_option('widgetwhatsCheckPosts');
delete_option('widgetwhatsCheckPages');
delete_site_option('widgetwhatsCheckPages');
delete_option('widgetwhatsCheckProducts');
delete_site_option('widgetwhatsCheckProducts');
delete_option('widgetwhatsCheckArchive');
delete_site_option('widgetwhatsCheckArchive');
delete_option('widgetwhatsInclude');
delete_site_option('widgetwhatsInclude');
delete_option('widgetwhatsExclude');
delete_site_option('widgetwhatsExclude');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

