<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtpfui_disable_metabox_link');
delete_site_option('rtpfui_disable_metabox_link');
delete_option('rtpfui_disable_metabox_quote');
delete_site_option('rtpfui_disable_metabox_quote');
delete_option('rtpfui_disable_metabox_video');
delete_site_option('rtpfui_disable_metabox_video');
delete_option('rtpfui_disable_metabox_audio');
delete_site_option('rtpfui_disable_metabox_audio');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

