<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smbw_settings');
delete_site_option('smbw_settings');
delete_option('widget_social-media-badge-widget');
delete_site_option('widget_social-media-badge-widget');
delete_option('smbw_openSelection');
delete_site_option('smbw_openSelection');
delete_option('smbw_collapsible');
delete_site_option('smbw_collapsible');
delete_option('smbw_allClosed');
delete_site_option('smbw_allClosed');
delete_option('smbw_load_jquery_ui');
delete_site_option('smbw_load_jquery_ui');
delete_option('smbw_load_scripts');
delete_site_option('smbw_load_scripts');
delete_option('smbw_style');
delete_site_option('smbw_style');
delete_option('smbw_faces_facebook');
delete_site_option('smbw_faces_facebook');
delete_option('smbw_stream_facebook');
delete_site_option('smbw_stream_facebook');
delete_option('smbw_tweets');
delete_site_option('smbw_tweets');
delete_option('smbw_live_twitter');
delete_site_option('smbw_live_twitter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smbw_plugin_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smbw_plugin_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smbw_plugin_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smbw_plugin_ignore_notice' ) );

