<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('furgefutar_gls_csomagpont_api_kulcs');
delete_site_option('furgefutar_gls_csomagpont_api_kulcs');
delete_option('furgefutar_gls_csomagpont_tipus');
delete_site_option('furgefutar_gls_csomagpont_tipus');
delete_option('furgefutar_allapot');
delete_site_option('furgefutar_allapot');
delete_option('furgefutar_fizetesi_modok');
delete_site_option('furgefutar_fizetesi_modok');
delete_option('furgefutar_felado_neve');
delete_site_option('furgefutar_felado_neve');
delete_option('furgefutar_felado_bank_neve');
delete_site_option('furgefutar_felado_bank_neve');
delete_option('furgefutar_felado_bankszamlaszama');
delete_site_option('furgefutar_felado_bankszamlaszama');
delete_option('furgefutar_tiltott_aru');
delete_site_option('furgefutar_tiltott_aru');
delete_option('furgefutar_aszf');
delete_site_option('furgefutar_aszf');
delete_option('furgefutar_tesztkornyezet');
delete_site_option('furgefutar_tesztkornyezet');
delete_option('furgefutar_email');
delete_site_option('furgefutar_email');
delete_option('furgefutar_jelszo');
delete_site_option('furgefutar_jelszo');
delete_option('furgefutar_debug');
delete_site_option('furgefutar_debug');
delete_option('furgefutar_cod_notice_dismiss');
delete_site_option('furgefutar_cod_notice_dismiss');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_furgefutar_kivalasztott_gls_csomagpont' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_furgefutar_kivalasztott_gls_csomagpont' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_furgefutar_kivalasztott_gls_csomagpont' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_furgefutar_kivalasztott_gls_csomagpont' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_furgefutar_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_furgefutar_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_furgefutar_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_furgefutar_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_furgefutar_fuvarlevelszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_furgefutar_fuvarlevelszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_furgefutar_fuvarlevelszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_furgefutar_fuvarlevelszam' ) );

