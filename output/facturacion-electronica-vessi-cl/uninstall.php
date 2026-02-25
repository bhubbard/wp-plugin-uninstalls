<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vfec_vessicl_auto_emitir');
delete_site_option('vfec_vessicl_auto_emitir');
delete_option('vfec_vessicl_access_key');
delete_site_option('vfec_vessicl_access_key');
delete_option('vfec_vessicl_secret_key');
delete_site_option('vfec_vessicl_secret_key');
delete_option('vfec_vessicl_email_from');
delete_site_option('vfec_vessicl_email_from');
delete_option('vfec_vessicl_rut_emisor');
delete_site_option('vfec_vessicl_rut_emisor');
delete_option('vfec_vessicl_api_url');
delete_site_option('vfec_vessicl_api_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_facturacion_document_type_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_facturacion_document_type_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_facturacion_document_type_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_facturacion_document_type_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_facturacion_document_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_facturacion_document_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_facturacion_document_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_facturacion_document_type' ) );

