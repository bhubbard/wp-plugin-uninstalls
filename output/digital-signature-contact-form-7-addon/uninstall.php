<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esig_global_document_id');
delete_site_option('esig_global_document_id');
delete_option('WP_ESignature__Cf7_Forms_Digital_Signature_documentation');
delete_site_option('WP_ESignature__Cf7_Forms_Digital_Signature_documentation');
delete_option('remove_rating_widget_cf7');
delete_site_option('remove_rating_widget_cf7');

// Delete Transients
delete_transient('_esign_cf7_redirect');
delete_site_transient('_esign_cf7_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'esig-cf7-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'esig-cf7-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'esig-cf7-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'esig-cf7-settings' ) );

