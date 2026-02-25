<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GTIPFETitulo_Ajustes_GTI');
delete_site_option('GTIPFETitulo_Ajustes_GTI');
delete_option('GTIPFENumero_de_Cuenta');
delete_site_option('GTIPFENumero_de_Cuenta');
delete_option('GTIPFEDecimales');
delete_site_option('GTIPFEDecimales');
delete_option('GTIPFESufijo');
delete_site_option('GTIPFESufijo');
delete_option('GTIPFECodigo_Actividad');
delete_site_option('GTIPFECodigo_Actividad');
delete_option('GTIPFEUsuario');
delete_site_option('GTIPFEUsuario');
delete_option('GTIPFEClave');
delete_site_option('GTIPFEClave');
delete_option('GTIPFEPunto_Facturacion');
delete_site_option('GTIPFEPunto_Facturacion');
delete_option('GTIPFEambiente');
delete_site_option('GTIPFEambiente');
delete_option('GTIPFETipoRuc');
delete_site_option('GTIPFETipoRuc');
delete_option('GTIPFERuc');
delete_site_option('GTIPFERuc');
delete_option('GTIPFEDV');
delete_site_option('GTIPFEDV');
delete_option('GTIPFENombEm');
delete_site_option('GTIPFENombEm');
delete_option('GTIPFEGTIPFECoordEmLat');
delete_site_option('GTIPFEGTIPFECoordEmLat');
delete_option('GTIPFECoordEmLong');
delete_site_option('GTIPFECoordEmLong');
delete_option('GTIPFEDirecEm');
delete_site_option('GTIPFEDirecEm');
delete_option('GTIPFECorreg');
delete_site_option('GTIPFECorreg');
delete_option('GTIPFEDistr');
delete_site_option('GTIPFEDistr');
delete_option('GTIPFEProv');
delete_site_option('GTIPFEProv');
delete_option('GTIPFETfnEm');
delete_site_option('GTIPFETfnEm');
delete_option('GTIPFECorElectEmi');
delete_site_option('GTIPFECorElectEmi');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_send_invoice_pf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_send_invoice_pf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_send_invoice_pf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_send_invoice_pf' ) );

