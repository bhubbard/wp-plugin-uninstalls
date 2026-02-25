<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmps_plugin_mapas');
delete_site_option('wpmps_plugin_mapas');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_border' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_border_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_provincia_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hover_provincia_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rellenar_provincias_con_enlace' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_has_link_provincia_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_metodo_recuperar_svg' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpmps_metodo_recuperar_svg');
delete_site_option('wpmps_metodo_recuperar_svg');
delete_option('wpmps_border_color');
delete_site_option('wpmps_border_color');
delete_option('wpmps_background_color');
delete_site_option('wpmps_background_color');
delete_option('wpmps_background_provincia_color');
delete_site_option('wpmps_background_provincia_color');
delete_option('wpmps_has_link_provincia_color');
delete_site_option('wpmps_has_link_provincia_color');
delete_option('wpmps_hover_provincia_color');
delete_site_option('wpmps_hover_provincia_color');
delete_option('wpmps_show_border');
delete_site_option('wpmps_show_border');
delete_option('wpmps_rellenar_provincias_con_enlace');
delete_site_option('wpmps_rellenar_provincias_con_enlace');
delete_option('wpmps_version');
delete_site_option('wpmps_version');
delete_option('wpmps_separador1');
delete_site_option('wpmps_separador1');
delete_option('wpmps_separador2');
delete_site_option('wpmps_separador2');
delete_option('wpmps_separador3');
delete_site_option('wpmps_separador3');

