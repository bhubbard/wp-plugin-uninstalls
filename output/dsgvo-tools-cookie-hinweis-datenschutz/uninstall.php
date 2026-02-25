<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fhw_dsgvo_cookie_position');
delete_site_option('fhw_dsgvo_cookie_position');
delete_option('fhw_dsgvo_cookie_abstand');
delete_site_option('fhw_dsgvo_cookie_abstand');
delete_option('fhw_dsgvo_cookie_bgcolor');
delete_site_option('fhw_dsgvo_cookie_bgcolor');
delete_option('fhw_dsgvo_cookie_textcolor');
delete_site_option('fhw_dsgvo_cookie_textcolor');
delete_option('fhw_dsgvo_cookie_text');
delete_site_option('fhw_dsgvo_cookie_text');
delete_option('fhw_dsgvo_cookie_buttonbgcolor');
delete_site_option('fhw_dsgvo_cookie_buttonbgcolor');
delete_option('fhw_dsgvo_cookie_buttontextcolor');
delete_site_option('fhw_dsgvo_cookie_buttontextcolor');
delete_option('fhw_dsgvo_cookie_buttontext');
delete_site_option('fhw_dsgvo_cookie_buttontext');
delete_option('fhw_dsgvo_cookie_datenschutzerklaerung');
delete_site_option('fhw_dsgvo_cookie_datenschutzerklaerung');
delete_option('fhw_dsgvo_cookie_datenschutzseite');
delete_site_option('fhw_dsgvo_cookie_datenschutzseite');
delete_option('fhw_dsgvo_cookie_datenschutztext');
delete_site_option('fhw_dsgvo_cookie_datenschutztext');
delete_option('fhw_dsgvo_cookie_datenschutzdesign');
delete_site_option('fhw_dsgvo_cookie_datenschutzdesign');
delete_option('fhw_dsgvo_cookie_datenschutztextfarbe');
delete_site_option('fhw_dsgvo_cookie_datenschutztextfarbe');
delete_option('fhw_dsgvo_cookie_ppbuttonbg');
delete_site_option('fhw_dsgvo_cookie_ppbuttonbg');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fhw_dsgvo_cookie_pp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

