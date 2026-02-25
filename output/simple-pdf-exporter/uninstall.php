<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spe_pdfhandler');
delete_site_option('spe_pdfhandler');
delete_option('_transient_timeout_simple_pdf_export_posts');
delete_site_option('_transient_timeout_simple_pdf_export_posts');

// Delete Transients
delete_transient('simple_pdf_export_posts');
delete_site_transient('simple_pdf_export_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pdf_export_page_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pdf_export_page_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pdf_export_page_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pdf_export_page_no' ) );

