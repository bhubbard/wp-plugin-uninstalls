<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kuvatfi_option_apikey');
delete_site_option('kuvatfi_option_apikey');

// Delete Transients
delete_transient('kuvatfi_sid');
delete_site_transient('kuvatfi_sid');
delete_transient('kuvatfi_uid');
delete_site_transient('kuvatfi_uid');
delete_transient('kuvatfi_validated');
delete_site_transient('kuvatfi_validated');
delete_transient('kuvatfi_lastgallery');
delete_site_transient('kuvatfi_lastgallery');
delete_transient('kuvatfi_foldertree');
delete_site_transient('kuvatfi_foldertree');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

