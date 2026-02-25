<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('publitio_offloading_show_notice');
delete_site_option('publitio_offloading_show_notice');
delete_option('publitio_offloading_allow_download');
delete_site_option('publitio_offloading_allow_download');
delete_option('publitio_offloading_offload_templates');
delete_site_option('publitio_offloading_offload_templates');
delete_option('publitio_offloading_image_checkbox');
delete_site_option('publitio_offloading_image_checkbox');
delete_option('publitio_offloading_video_checkbox');
delete_site_option('publitio_offloading_video_checkbox');
delete_option('publitio_offloading_audio_checkbox');
delete_site_option('publitio_offloading_audio_checkbox');
delete_option('publitio_offloading_document_checkbox');
delete_site_option('publitio_offloading_document_checkbox');
delete_option('publitio_offloading_default_folder');
delete_site_option('publitio_offloading_default_folder');
delete_option('publitio_offloading_default_cname');
delete_site_option('publitio_offloading_default_cname');
delete_option('publitio_offloading_image_quality');
delete_site_option('publitio_offloading_image_quality');
delete_option('publitio_offloading_video_quality');
delete_site_option('publitio_offloading_video_quality');
delete_option('publitio_offloading_delete_checkbox');
delete_site_option('publitio_offloading_delete_checkbox');
delete_option('publitio_offloading_replace_checkbox');
delete_site_option('publitio_offloading_replace_checkbox');
delete_option('publitio_offloading_key');
delete_site_option('publitio_offloading_key');
delete_option('publitio_offloading_secret');
delete_site_option('publitio_offloading_secret');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'publitio_offloading_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'publitioMeta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'publitioMeta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'publitioMeta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'publitioMeta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_context' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_context' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_context' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_context' ) );

