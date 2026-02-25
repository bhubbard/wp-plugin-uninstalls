<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('save_as_pdf_pdfcrowd_error_code');
delete_site_option('save_as_pdf_pdfcrowd_error_code');
delete_option('save-as-pdf-pdfcrowd');
delete_site_option('save-as-pdf-pdfcrowd');
delete_option('save-as-pdf-pdfcrowd_encryption_secret');
delete_site_option('save-as-pdf-pdfcrowd_encryption_secret');

// Delete Transients
delete_transient('save_as_pdf_pdfcrowd_show_wizard');
delete_site_transient('save_as_pdf_pdfcrowd_show_wizard');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'save_as_pdf_pdfcrowd_dismissed_upgrade' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'save_as_pdf_pdfcrowd_dismissed_upgrade' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'save_as_pdf_pdfcrowd_dismissed_upgrade' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'save_as_pdf_pdfcrowd_dismissed_upgrade' ) );

