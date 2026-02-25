<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-zavesa' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-barva-zavese' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-lokacija' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-senca-okna' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-zaobljenost-okna' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-barva-ozadja' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-animacija' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-ime-strani' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-trajanje-piskotka' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-barva-ikone' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-barva-pisave' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-velikost-pisave' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-naslov' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-besedilo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-barva-povezave' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-ime-povezave-pogoji' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-povezava-pogoji' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-velikost-povezave' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-besedilo-gumba' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-barva-gumba' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-zaobljenost-gumba' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-barva-gumba-povezave' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-velikost-gumba-povezave' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('piskotki-gdpr-zavesa');
delete_site_option('piskotki-gdpr-zavesa');
delete_option('piskotki-gdpr-barva-zavese');
delete_site_option('piskotki-gdpr-barva-zavese');
delete_option('piskotki-gdpr-lokacija');
delete_site_option('piskotki-gdpr-lokacija');
delete_option('piskotki-gdpr-senca-okna');
delete_site_option('piskotki-gdpr-senca-okna');
delete_option('piskotki-gdpr-zaobljenost-okna');
delete_site_option('piskotki-gdpr-zaobljenost-okna');
delete_option('piskotki-gdpr-barva-ozadja');
delete_site_option('piskotki-gdpr-barva-ozadja');
delete_option('piskotki-gdpr-animacija');
delete_site_option('piskotki-gdpr-animacija');
delete_option('piskotki-gdpr-ime-strani');
delete_site_option('piskotki-gdpr-ime-strani');
delete_option('piskotki-gdpr-trajanje-piskotka');
delete_site_option('piskotki-gdpr-trajanje-piskotka');
delete_option('piskotki-gdpr-barva-ikone');
delete_site_option('piskotki-gdpr-barva-ikone');
delete_option('piskotki-gdpr-barva-pisave');
delete_site_option('piskotki-gdpr-barva-pisave');
delete_option('piskotki-gdpr-velikost-pisave');
delete_site_option('piskotki-gdpr-velikost-pisave');
delete_option('piskotki-gdpr-naslov');
delete_site_option('piskotki-gdpr-naslov');
delete_option('piskotki-gdpr-besedilo');
delete_site_option('piskotki-gdpr-besedilo');
delete_option('piskotki-gdpr-barva-povezave');
delete_site_option('piskotki-gdpr-barva-povezave');
delete_option('piskotki-gdpr-ime-povezave-pogoji');
delete_site_option('piskotki-gdpr-ime-povezave-pogoji');
delete_option('piskotki-gdpr-povezava-pogoji');
delete_site_option('piskotki-gdpr-povezava-pogoji');
delete_option('piskotki-gdpr-velikost-povezave');
delete_site_option('piskotki-gdpr-velikost-povezave');
delete_option('piskotki-gdpr-besedilo-gumba');
delete_site_option('piskotki-gdpr-besedilo-gumba');
delete_option('piskotki-gdpr-barva-gumba');
delete_site_option('piskotki-gdpr-barva-gumba');
delete_option('piskotki-gdpr-zaobljenost-gumba');
delete_site_option('piskotki-gdpr-zaobljenost-gumba');
delete_option('piskotki-gdpr-barva-gumba-povezave');
delete_site_option('piskotki-gdpr-barva-gumba-povezave');
delete_option('piskotki-gdpr-velikost-gumba-povezave');
delete_site_option('piskotki-gdpr-velikost-gumba-povezave');

