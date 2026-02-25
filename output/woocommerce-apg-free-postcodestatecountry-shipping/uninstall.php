<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('apg_shipping_clases_envio');
delete_site_transient('apg_shipping_clases_envio');
delete_transient('apg_shipping_roles_usuario');
delete_site_transient('apg_shipping_roles_usuario');
delete_transient('apg_shipping_atributos');
delete_site_transient('apg_shipping_atributos');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_apg_shipping_icono_%', '_site_transient_apg_shipping_icono_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('apg_shipping_metodos_de_pago');
delete_site_transient('apg_shipping_metodos_de_pago');
delete_transient('apg_shipping_zonas_de_envio');
delete_site_transient('apg_shipping_zonas_de_envio');
delete_transient('apg_free_shipping_plugin');
delete_site_transient('apg_free_shipping_plugin');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_apg_shipping_%', '_site_transient_apg_shipping_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_apg_shipping_metodos_envio_%', '_site_transient_apg_shipping_metodos_envio_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

