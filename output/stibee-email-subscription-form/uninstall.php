<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Wp_Stibee_apitoken');
delete_site_option('Wp_Stibee_apitoken');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_apitoken' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_selectedlist' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formfields' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formtitle' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formdesc' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_buttontext' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_buttoncolor' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_buttonbg' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('Wp_Stibee_subscribeendpoint');
delete_site_option('Wp_Stibee_subscribeendpoint');
delete_option('update_option_Wp_Stibee_selectedlist');
delete_site_option('update_option_Wp_Stibee_selectedlist');
delete_option('update_option_Wp_Stibee_formfields');
delete_site_option('update_option_Wp_Stibee_formfields');
delete_option('Wp_Stibee_selectedlist');
delete_site_option('Wp_Stibee_selectedlist');
delete_option('Wp_Stibee_formfields');
delete_site_option('Wp_Stibee_formfields');
delete_option('Wp_Stibee_formtitle');
delete_site_option('Wp_Stibee_formtitle');
delete_option('Wp_Stibee_formdesc');
delete_site_option('Wp_Stibee_formdesc');
delete_option('Wp_Stibee_buttontext');
delete_site_option('Wp_Stibee_buttontext');
delete_option('Wp_Stibee_buttoncolor');
delete_site_option('Wp_Stibee_buttoncolor');
delete_option('Wp_Stibee_buttonbg');
delete_site_option('Wp_Stibee_buttonbg');
delete_option('Wp_Stibee_position');
delete_site_option('Wp_Stibee_position');
delete_option('Wp_Stibee_day');
delete_site_option('Wp_Stibee_day');

