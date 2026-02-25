<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nautica_app_grade_db_version');
delete_site_option('nautica_app_grade_db_version');
delete_option('APPGRADENAUTICA_NAUTICA_APP_GRADE_TOKEN');
delete_site_option('APPGRADENAUTICA_NAUTICA_APP_GRADE_TOKEN');
delete_option('APPGRADENAUTICA_SINCRO_PRODOTTI_SPED');
delete_site_option('APPGRADENAUTICA_SINCRO_PRODOTTI_SPED');
delete_option('APPGRADENAUTICA_SINCRO_CORSO_LEZIONI');
delete_site_option('APPGRADENAUTICA_SINCRO_CORSO_LEZIONI');
delete_option('APPGRADENAUTICA_CORSO_LEZIONI_SEND_EMAIL');
delete_site_option('APPGRADENAUTICA_CORSO_LEZIONI_SEND_EMAIL');
delete_option('APPGRADENAUTICA_SINCRO_CORSO_PACCHETTI');
delete_site_option('APPGRADENAUTICA_SINCRO_CORSO_PACCHETTI');
delete_option('APPGRADENAUTICA_SINCRO_PRODOTTI');
delete_site_option('APPGRADENAUTICA_SINCRO_PRODOTTI');
delete_option('APPGRADENAUTICA_SINCRO_PRODOTTI_NAME');
delete_site_option('APPGRADENAUTICA_SINCRO_PRODOTTI_NAME');
delete_option('APPGRADENAUTICA_SINCRO_PRODOTTI_FATTURA');
delete_site_option('APPGRADENAUTICA_SINCRO_PRODOTTI_FATTURA');
delete_option('APPGRADENAUTICA_SINCRO_PRODOTTI_CODE');
delete_site_option('APPGRADENAUTICA_SINCRO_PRODOTTI_CODE');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wdn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wdn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wdn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wdn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_id_corso_lezione' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_id_corso_lezione' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_id_corso_lezione' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_id_corso_lezione' ) );

