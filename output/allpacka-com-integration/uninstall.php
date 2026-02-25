<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allpacka_allapot');
delete_site_option('allpacka_allapot');
delete_option('allpacka_fizetesi_modok');
delete_site_option('allpacka_fizetesi_modok');
delete_option('allpacka_felado_neve');
delete_site_option('allpacka_felado_neve');
delete_option('allpacka_felado_bank_neve');
delete_site_option('allpacka_felado_bank_neve');
delete_option('allpacka_felado_bankszamlaszama');
delete_site_option('allpacka_felado_bankszamlaszama');
delete_option('allpacka_tiltott_aru');
delete_site_option('allpacka_tiltott_aru');
delete_option('allpacka_aszf');
delete_site_option('allpacka_aszf');
delete_option('allpacka_tesztkornyezet');
delete_site_option('allpacka_tesztkornyezet');
delete_option('allpacka_email');
delete_site_option('allpacka_email');
delete_option('allpacka_jelszo');
delete_site_option('allpacka_jelszo');
delete_option('allpacka_debug');
delete_site_option('allpacka_debug');
delete_option('allpacka_cod_notice_dismiss');
delete_site_option('allpacka_cod_notice_dismiss');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_allpacka_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_allpacka_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_allpacka_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_allpacka_azonosito' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_allpacka_fuvarlevelszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_allpacka_fuvarlevelszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_allpacka_fuvarlevelszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_allpacka_fuvarlevelszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_allpacka_kivalasztott_gls_csomagpont' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_allpacka_kivalasztott_gls_csomagpont' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_allpacka_kivalasztott_gls_csomagpont' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_allpacka_kivalasztott_gls_csomagpont' ) );

