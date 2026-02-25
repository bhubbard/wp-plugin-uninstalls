<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esig_global_document_id');
delete_site_option('esig_global_document_id');
delete_option('WP_ESignature__WP_Forms_Digital_Signature_documentation');
delete_site_option('WP_ESignature__WP_Forms_Digital_Signature_documentation');
delete_option('remove_rating_widget_wpform');
delete_site_option('remove_rating_widget_wpform');

// Delete Transients
delete_transient('_esign_wpform_redirect');
delete_site_transient('_esign_wpform_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'esig-wpform-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'esig-wpform-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'esig-wpform-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'esig-wpform-settings' ) );

