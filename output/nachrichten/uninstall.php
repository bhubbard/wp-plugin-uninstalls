<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nachrichten_plugin_version');
delete_site_option('nachrichten_plugin_version');
delete_option('nachrichten_plugin_version_taken');
delete_site_option('nachrichten_plugin_version_taken');
delete_option('nachrichten_plugin_widget_options');
delete_site_option('nachrichten_plugin_widget_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'news_style_dashbord_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'news_style_dashbord_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'news_style_dashbord_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'news_style_dashbord_style' ) );

