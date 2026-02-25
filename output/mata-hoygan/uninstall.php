<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mh_HOYGAN');
delete_site_option('mh_HOYGAN');
delete_option('mh_censura');
delete_site_option('mh_censura');
delete_option('mh_SEO');
delete_site_option('mh_SEO');
delete_option('mh_palabras_censuradas');
delete_site_option('mh_palabras_censuradas');
delete_option('mh_no_corregir_doble');
delete_site_option('mh_no_corregir_doble');
delete_option('mh_no_corregir_k');
delete_site_option('mh_no_corregir_k');
delete_option('mh_no_corregir_s_t');
delete_site_option('mh_no_corregir_s_t');
delete_option('mh_ultimo_comentario');
delete_site_option('mh_ultimo_comentario');
delete_option('mh_terminado');
delete_site_option('mh_terminado');
delete_option('terminado');
delete_site_option('terminado');
delete_option('mensaje_ocultado');
delete_site_option('mensaje_ocultado');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );

