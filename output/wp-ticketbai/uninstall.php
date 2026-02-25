<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FTBAI_shownif');
delete_site_option('FTBAI_shownif');
delete_option('FTBAI_maxsimplificada');
delete_site_option('FTBAI_maxsimplificada');
delete_option('FTBAI_clientesRE');
delete_site_option('FTBAI_clientesRE');
delete_option('FTBAI_DNI');
delete_site_option('FTBAI_DNI');
delete_option('FTBAI_CLAVE');
delete_site_option('FTBAI_CLAVE');
delete_option('FTBAI_DNI_TEST');
delete_site_option('FTBAI_DNI_TEST');
delete_option('FTBAI_CLAVE_TEST');
delete_site_option('FTBAI_CLAVE_TEST');
delete_option('FTBAI_REG_NOMBRE');
delete_site_option('FTBAI_REG_NOMBRE');
delete_option('FTBAI_REG_DNI');
delete_site_option('FTBAI_REG_DNI');
delete_option('FTBAI_REG_EMAIL');
delete_site_option('FTBAI_REG_EMAIL');
delete_option('FTBAI_REG_TELEFONO');
delete_site_option('FTBAI_REG_TELEFONO');
delete_option('FTBAI_REG_MENSAJE');
delete_site_option('FTBAI_REG_MENSAJE');
delete_option('FTBAI_emitefactautomatica');
delete_site_option('FTBAI_emitefactautomatica');
delete_option('FTBAI_sendfactautomatica');
delete_site_option('FTBAI_sendfactautomatica');
delete_option('FTBAI_copyemail');
delete_site_option('FTBAI_copyemail');
delete_option('FTBAI_apartirnumeropedido');
delete_site_option('FTBAI_apartirnumeropedido');
delete_option('FTBAI_posicionQR');
delete_site_option('FTBAI_posicionQR');
delete_option('FTBAI_operacionextranjero');
delete_site_option('FTBAI_operacionextranjero');
delete_option('FTBAI_causaexentaiva');
delete_site_option('FTBAI_causaexentaiva');
delete_option('FTBAI_canariasnoexentoiva');
delete_site_option('FTBAI_canariasnoexentoiva');
delete_option('FTBAI_permitefueraUE');
delete_site_option('FTBAI_permitefueraUE');
delete_option('FTBAI_empresaroi');
delete_site_option('FTBAI_empresaroi');
delete_option('FTBAI_version');
delete_site_option('FTBAI_version');
delete_option('FTBAI_NOMBRE');
delete_site_option('FTBAI_NOMBRE');
delete_option('FTBAI_EMAIL');
delete_site_option('FTBAI_EMAIL');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_last_name' ) );

